class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :user_info
  has_one :social_info
  has_many :game_infos

  after_create :after_create

  def after_create

    self.user_info = UserInfo.new
    self.user_info.save

    self.social_info = SocialInfo.new
    self.social_info.save

    self.game_infos.create(:game_code => "aw")
    self.game_infos.create(:game_code => "wb")
    self.game_infos.create(:game_code => "ah")

  end

end
