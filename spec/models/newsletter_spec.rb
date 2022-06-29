# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Newsletter, type: :model do
  let(:user1) { create(:user) }
  let(:user2) { create(:user) }
  let(:instance1) { create(:instance, user: user1) }
  let(:instance2) { create(:instance, user: user1) }
  let(:newsletter1) { create(:newsletter, user: user1, instance: instance1) }
  let(:newsletter2) { create(:newsletter, user: user1, instance: instance2) }

  context 'setup and initialization' do
    it 'has the instance fixtures' do
      expect(newsletter1).to_not be_nil
      expect(newsletter2).to_not be_nil
    end

    it 'has the right defaults' do
      expect(newsletter1.starts_on).to eq(Date.today)
      expect(newsletter1.recurrence).to eq({})
      expect(newsletter1.is_active).to be_false
      expect(newsletter1.autosend).to be_true
      expect(newsletter1.slug).to include(newsletter1.name.split.first.downcase)
    end
  end

  context 'recurrence' do
    it 'provides the right default' do
      result = newsletter1.get_recurrence
      expect(result[:start_time]).to be_nil
      expect(result[:extimes]).to be_empty
    end

    it 'can create a simple weekly recurrence' do
      result = newsletter1.weekly_recurrence(days: [Date.today.wday])
      expect(result.next_occurrence.month).to eq((Date.today + 1.week).month)
      expect(result.next_occurrence.day).to eq((Date.today + 1.week).day)
    end

    it 'can create a simple monthly recurrence' do
      result = newsletter1.monthly_recurrence(days: [Date.today.day])
      expect(result.next_occurrence.month).to eq((Date.today + 1.month).month)
      expect(result.next_occurrence.day).to eq(Date.today.day) # This may fail on short months
    end

    it 'can generate human readable schedule description' do
      the_hour = Time.now.strftime('%-l %p')
      newsletter1.weekly_recurrence(days: [3])
      expect(newsletter1.recurrence_in_words).to eq("Weekly on Wednesdays at #{the_hour}")
      newsletter1.monthly_recurrence(days: [10])
      expect(newsletter1.recurrence_in_words).to eq("Monthly on the 10th day of the month at #{the_hour}")
    end

  end
end
