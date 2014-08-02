class UserInfo < ActiveRecord::Base

  belongs_to :user

  def self.active_squads
    UserInfo.all.collect{|u| u.squadron unless u.squadron.blank? }.uniq.sort
  end

  def get_icon
    self.icon.blank? ? "sheep" : self.icon
  end

end
