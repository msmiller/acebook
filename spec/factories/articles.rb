FactoryBot.define do
  factory :article do
    # instance { nil }
    # user { nil }
    # section { nil }
    name { Faker::Lorem.sentence(word_count: 3, supplemental: false, random_words_to_add: 4) }
    # slug { 'MyString' }
    excerpt { Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4) }
    excerpt_format { 'text' }
    # aasm_state { "MyString" }
    # is_public { false }
    # is_monetized { false }
    # publish_at { "2022-05-22 13:13:09" }
    # published_at { "2022-05-22 13:13:09" }
    # is_pinned { false }
    # was_mailed { false }
    # is_static { false }
  end
end
