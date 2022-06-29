FactoryBot.define do
  factory :instance do
    # user { nil }
    name { Faker::Book.title }
    # slug { "MyString" }
    subdomain { Faker::Internet.domain_word }
    description { Faker::Lorem.paragraphs(number: 2).join }
    # is_public { false }
    # is_monetized { false }
    # render_as { "MyString" }
    # settings { "" }
    # has_sections { false }
    # in_nexus { false }
    # show_ads { false }
  end
end
