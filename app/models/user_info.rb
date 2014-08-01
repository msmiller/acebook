class UserInfo < ActiveRecord::Base

  belongs_to :user

  def self.active_squads
    UserInfo.all.collect{|u| u.squadron}.uniq.sort
  end

end
