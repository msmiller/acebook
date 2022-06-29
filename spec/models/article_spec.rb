require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:user1) { create(:user) }
  let(:user2) { create(:user) }
  let(:instance1) { create(:instance, user: user1) }
  let(:instance2) { create(:instance, user: user1) }
  let(:newsletter1) { create(:newsletter, user: user1, instance: instance1) }
  let(:newsletter2) { create(:newsletter, user: user1, instance: instance2) }
  let(:article1) { create(:article, user: user1, instance: instance1) }
  let(:article2) { create(:article, user: user1, instance: instance2) }

  context 'setup and initialization' do
    it 'has the instance fixtures' do
      expect(article1).to_not be_nil
      expect(article2).to_not be_nil
    end

    it 'has the right defaults' do
      expect(article1.is_public).to be_false
      expect(article1.is_monetized).to be_false
      expect(article1.is_pinned).to be_false
      expect(article1.was_mailed).to be_false
      expect(article1.is_static).to be_false
    end
  end

  context 'scopes and core stuff' do
    it 'has statics scope' do
      article1.reload 
      article2.reload 
      expect(Article.all.statics.count).to eq(0)
      article1.update :is_static => true
      expect(Article.all.statics.count).to eq(1)
    end

    it 'has publics/privates scope' do
      article1.reload 
      article2.reload 
      expect(Article.all.publics.count).to eq(0)
      expect(Article.all.privates.count).to eq(2)
      article1.update :is_public => true
      expect(Article.all.publics.count).to eq(1)
      expect(Article.all.privates.count).to eq(1)
    end

    it 'has unmailed scope' do
      article1.reload 
      article2.reload 
      expect(Article.all.unmailed.count).to eq(2)
      article1.update :was_mailed => true
      expect(Article.all.unmailed.count).to eq(1)
    end

    it 'has statics scope' do
      article1.reload 
      article2.reload
      expect(Article.all.pinned.count).to eq(0)
      article1.update :is_pinned => true
      expect(Article.all.pinned.count).to eq(1)
    end
  end
end
