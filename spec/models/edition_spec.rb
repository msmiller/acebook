require 'rails_helper'

RSpec.describe Edition, type: :model do
  let!(:user1) { create(:user) }
  let!(:user2) { create(:user) }
  let!(:instance1) { create(:instance, user: user1) }
  let!(:instance2) { create(:instance, user: user1) }
  let!(:newsletter1) { create(:newsletter, user: user1, instance: instance1) }
  let!(:newsletter2) { create(:newsletter, user: user1, instance: instance2) }
  let!(:article1) { create(:article, user: user1, instance: instance1) }
  let!(:article2) { create(:article, user: user1, instance: instance2) }
  let!(:article3) { create(:article, user: user1, instance: instance1) }
  let!(:article4) { create(:article, user: user1, instance: instance2) }

  context 'setup and initialization' do
    it 'sets up properly' do
      edition = Edition.create(newsletter: newsletter1)
      edition.add_article(article2)
      edition.reload
      edition.add_article(article1)
      expect(edition.slug.length).to eq(36)
    end
  end

  context 'articles list' do
    it 'gathers unsent articles' do
      edition = Edition.create(newsletter: newsletter1)
      edition.gather_unmailed
      expect(edition.edition_articles.collect(&:article_id)).to eq([article3.id, article1.id])

      article1.update :was_mailed => true
      edition.clear_unmailed
      edition.gather_unmailed
      expect(edition.edition_articles.collect(&:article_id)).to eq([article3.id])
    end
  end

  context 'gather_mail_topics' do
    it 'works when there are no taggings' do
      edition = Edition.create(newsletter: newsletter1)
      edition.gather_unmailed
      # article1 and article3 should be included
      ap edition.gather_mail_topics(user1).collect(&:id)
    end

    it 'works when there are group taggings on both' do
      edition = Edition.create(newsletter: newsletter1)
      edition.gather_unmailed
      article3.group_list = ['foo']
      article3.save
      article1.group_list = ['bar']
      article1.save
      user1.group_list = ['foo']
      user1.save
      # article3 should be included, article1 should not
      ap edition.gather_mail_topics(user1).collect(&:id)
    end

    it 'works when there are topic taggings on both' do
      edition = Edition.create(newsletter: newsletter1)
      edition.gather_unmailed
      article1.topic_list = ['foo']
      article1.save
      article3.topic_list = ['bar']
      article3.save
      user1.topic_list = ['foo']
      user1.save
      # article1 should be included, article3 should not
      ap edition.gather_mail_topics(user1).collect(&:id)
    end

    it 'works when there is the all topic tag' do
      edition = Edition.create(newsletter: newsletter1)
      edition.gather_unmailed
      article1.topic_list = ['foo']
      article1.save
      article3.topic_list = ['all']
      article3.save
      user1.topic_list = ['bar']
      user1.save
      # article3 should be included, article1 should not
      ap edition.gather_mail_topics(user1).collect(&:id)

      ap JSON.parse(EditionUserTopicsBlueprint.render(Article.all))
    end
  end
end
