class VoawController < ApplicationController

  def index
    @current_user = current_user
    @all_users = User.all.sort { |x,y| x.user_info.handle <=> y.user_info.handle }
  end

end
