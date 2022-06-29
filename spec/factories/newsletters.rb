FactoryBot.define do
  factory :newsletter do
    # user { nil }
    # instance { nil }
    name { Faker::Artist.name }
    # slug { "MyString" }
    subject { Faker::Lorem.sentence(word_count: 4) }
    # recurrence { "" }
    # starts_on { "2022-05-16" }
    # ends_on { "2022-05-16" }
    # next_run_at { "2022-05-16 21:00:52" }
    # last_run_at { "2022-05-16 21:00:52" }
    # is_active { false }
    # autosend { false }
    # aasm_state { "MyString" }
  end
end
