class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :social_info

  after_create :after_create

  def after_create
    self.social_info = SocialInfo.new
    self.social_info.save
  end

end
