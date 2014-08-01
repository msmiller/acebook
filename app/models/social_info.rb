class SocialInfo < ActiveRecord::Base

  validates :homepage_url, :url   => true
  validates :twitter_url,  :url   => true

  belongs_to :user

end
