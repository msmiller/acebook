FactoryBot.define do
  factory :edition do
    instance { nil }
    newsletter { nil }
    send_time { "2022-05-24 13:17:40" }
    submitted_at { "2022-05-24 13:17:40" }
    started_at { "2022-05-24 13:17:40" }
    finished_at { "2022-05-24 13:17:40" }
    num_processed { 1 }
    num_sent { 1 }
    num_confirmed { 1 }
    num_opened { 1 }
    num_viewed { 1 }
    aasm_state { "MyString" }
  end
end
