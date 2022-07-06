class UserInfo < ApplicationRecord

  belongs_to :user, inverse_of: :user_info

  after_update :transcribe_forum_name

  def transcribe_forum_name
    self.user.update forum_name: handle
  end

  def self.active_squads
    UserInfo.all.collect{|u| u.squadron }.compact.uniq.sort
  end

  def get_icon
    self.icon.blank? ? "sheep" : self.icon
  end

  def row_addr
    [self.city, self.state].reject{ |x| x.blank? }.join(", ")
  end

end
