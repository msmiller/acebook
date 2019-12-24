class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
#         :recoverable, :rememberable, :trackable, :validatable

  has_one :user_info, dependent: :destroy
  has_one :social_info, dependent: :destroy
  #has_many :game_infos, dependent: :destroy #, :order => "id ASC"

  has_many :lores
  has_many :timelines
  has_many :links

  after_create :after_create

  has_many :comments

  def after_create

    self.user_info = UserInfo.new
    self.user_info.save

    self.social_info = SocialInfo.new
    self.social_info.save

    #self.game_infos.create(:game_code => "aw")
    #self.game_infos.create(:game_code => "wb")
    #self.game_infos.create(:game_code => "ah")

  end

  # For ActiveAdmin
  def display_name
    self.user_info.name
  end

  # I'm the only one who'll mess with the database
  def is_admin?
    self.email == "mark.s.miller@gmail.com"
  end

	# Disable this for now ... re-enable when spammers come
  def has_published_content?
    #x = (self.lores.where(:approved => true).count + self.timelines.where(:approved => true).count + self.links.where(:approved => true).count)
    #x > 0
    true
  end

end
