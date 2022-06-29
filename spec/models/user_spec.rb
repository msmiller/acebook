# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user1) { create(:user) }
  let(:user2) { create(:user) }

  context 'ensure fixture' do
    it 'has the user fixtures' do
      expect(user1).to_not be_nil
      expect(user2).to_not be_nil
    end
  end

  context 'initializations' do
    it 'generates a default slug' do
      slug_user = create :user, email: 'foo@bar.com'
      expect(slug_user.slug).to eq(slug_user.name.downcase.gsub(' ', '-').gsub('.', ''))
    end

    it 'can complete SetupNewUser' do
      #      load_users
      #      load_channels
      #      load_onboard_steps
      #
      #      expect( @user1.onboarder ).to_not be(nil)
      #      expect( @user1.onboarder.num_complete_steps ).to eq( 0 )
      #      expect( @user1.channels.count ).to eq( 0 )
      #
      #      SetupNewUser.run!(user_id: @user1.id)
      #      expect( @user1.onboarder.num_complete_steps ).to eq( 1 )
      #      expect( @user1.channels.count ).to eq( 1 )
      #
      #      # Now check if we can subscribe-all later on
      #      @user1.subscribe_to_channels('all')
      #      expect( @user1.channels.count ).to eq( 2 )
      #
      #      ap @user1.onboarder
    end
  end

  context 'validations' do
    it 'user slugs' do
      #      load_users
      #      @user1.slug = @user2.slug
      #      @user1.valid?
      #      expect( @user1.errors.messages.count ).to eq( 1 )
    end
  end
end
