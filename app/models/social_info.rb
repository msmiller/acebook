class SocialInfo < ApplicationRecord

  #validates :homepage_url, :url   => true
  #validates :twitter_url,  :url   => true

  belongs_to :user, inverse_of: :social_info

end
