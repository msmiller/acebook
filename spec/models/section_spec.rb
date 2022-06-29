require 'rails_helper'

RSpec.describe Section, type: :model do
  let(:user1) { create(:user) }
  let(:user2) { create(:user) }
  let(:instance1) { create(:instance, user: user1) }
  let(:instance2) { create(:instance, user: user1) }
  let(:section1) { create(:section, instance: instance1) }
  let(:section2) { create(:section, instance: instance1) }

  context 'setup and initialization' do
    it 'has the section fixtures' do
      expect(section1).to_not be_nil
      expect(section2).to_not be_nil
    end
  end
end
