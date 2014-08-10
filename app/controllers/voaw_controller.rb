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
    @current_user = current_user

    @pilot = User.find(params[:id])
    render :layout => nil
  end

  def stats

    @current_user = current_user

    @earliest = UserInfo.all.order("year_started ASC").first
    @latest = UserInfo.where("year_started IS NOT NULL").order("year_started DESC").first
    @icons = UserInfo.group('icon').count.to_a.sort { |x,y| y[1] <=> x[1] }

    @awcountries = UserInfo.where("handle IS NOT NULL AND aw_cpid IS NOT NULL AND aw_cpid != '' AND aw_country != ''").group('aw_country').count
    @wbcountries = UserInfo.where("handle IS NOT NULL AND wb_cpid IS NOT NULL AND wb_cpid != '' AND wb_country != ''").group('wb_country').count
    @ahcountries = UserInfo.where("handle IS NOT NULL AND ah_cpid IS NOT NULL AND ah_cpid != '' AND ah_country != ''").group('ah_country').count

    @allplayers = UserInfo.where("handle IS NOT NULL").count
    @awplayers = UserInfo.where("handle IS NOT NULL AND aw_cpid IS NOT NULL AND aw_cpid != ''").count
    @wbplayers = UserInfo.where("handle IS NOT NULL AND wb_cpid IS NOT NULL AND wb_cpid != ''").count
    @ahplayers = UserInfo.where("handle IS NOT NULL AND ah_cpid IS NOT NULL AND ah_cpid != ''").count

    @avg_start_years = UserInfo.where("handle IS NOT NULL AND year_started IS NOT NULL AND year_started != 0").sum(:year_started)
    @avg_start_players = UserInfo.where("handle IS NOT NULL AND year_started IS NOT NULL AND year_started != 0").count

    @num_lores = Lore.all.count
    @num_timelines = Timeline.all.count
    
  end

end
