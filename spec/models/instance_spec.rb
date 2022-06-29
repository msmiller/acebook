# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Instance, type: :model do
  let(:user1) { create(:user) }
  let(:user2) { create(:user) }
  let(:instance1) { create(:instance, user: user1) }
  let(:instance2) { create(:instance, user: user1) }

  context 'setup and initialization' do
    it 'has the instance fixtures' do
      expect(instance1).to_not be_nil
      expect(instance2).to_not be_nil
    end
  end
end
