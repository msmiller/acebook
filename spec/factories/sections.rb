FactoryBot.define do
  factory :section do
    # instance { nil }
    name { Faker::Book.title }
    # slug { "MyString" }
    description { Faker::Lorem.paragraphs(number: 2).join }
    # is_public { false }
    # position { 1 }
    # settings { "" }
    # icon_key { "MyString" }
    # icon_color { "MyString" }
    # allow_comments { false }
  end
end
