class VoawController < ApplicationController

  def index
    @current_user = current_user
    #@pilots = UserInfo.where("handle IS NOT NULL AND handle != ''").order("handle DESC") #.sort { |x,y| x.handle <=> y.handle }
    @pilots = UserInfo.where("handle IS NOT NULL AND handle != ''").sort { |x,y| x.handle.downcase <=> y.handle.downcase }
  end

  def profile
    @current_user = current_user
    @pilot = current_user.user_info

    unless params[:button].nil?
      wtf = {}.merge(params['pilot'])
      @pilot.update_attributes(wtf)
    end

  end

end
