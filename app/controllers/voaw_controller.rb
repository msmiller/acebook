class VoawController < ApplicationController

  include AutoHtml

  def index
    @current_user = current_user
    #@pilots = UserInfo.where("handle IS NOT NULL AND handle != ''").order("handle DESC") #.sort { |x,y| x.handle <=> y.handle }
    @pilots = UserInfo.where("handle IS NOT NULL AND handle != ''").sort { |x,y| x.handle.downcase <=> y.handle.downcase }
    if @current_user && @current_user.user_info.handle.blank?
      redirect_to "/profile"
    end
  end

  def profile
    @current_user = current_user
    @pilot = current_user.user_info
    @social = current_user.social_info
    unless params[:button].nil?
      wtf = {}.merge(params['pilot'])
      wtf['year_started'] = params['date']['year']
      @pilot.update_attributes(wtf)
      soc = {}.merge(params['social'])
      @social.update_attributes(soc)
      flash.now[:notice] = "Profile updated."
    end

  end

  def show
    @pilot = User.find(params[:id])
    render :layout => nil
  end

  def stats
    @earliest = UserInfo.all.order("year_started ASC").first
    @latest = UserInfo.where("year_started IS NOT NULL").order("year_started DESC").first
    @icons = UserInfo.group('icon').count
    @allplayers = UserInfo.count
    @awplayers = UserInfo.where("aw_cpid IS NOT NULL").count
    @wbplayers = UserInfo.where("wb_cpid IS NOT NULL").count
    @ahplayers = UserInfo.where("ah_cpid IS NOT NULL").count
  end

end
