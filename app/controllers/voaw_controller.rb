class VoawController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show, :list, :stats]

  include Rinku

  def list
    @current_user = current_user
    @navbar_active = 'list'
    # @pilots = UserInfo.where("handle IS NOT NULL AND handle != ''").order("handle DESC") #.sort { |x,y| x.handle <=> y.handle }
    @pilots = UserInfo.where("handle IS NOT NULL AND handle != ''").sort { |x,y| x.handle.downcase <=> y.handle.downcase }
    if @current_user && @current_user.user_info.handle.blank?
      redirect_to "/profile"
    end
  end

  def index
    @current_user = current_user
    @navbar_active = 'index'
    # @pilots = UserInfo.where("handle IS NOT NULL AND handle != ''").order("handle DESC") #.sort { |x,y| x.handle <=> y.handle }
    @pilots = UserInfo.where("handle IS NOT NULL AND handle != ''").sort { |x,y| x.handle.downcase <=> y.handle.downcase }
    if @current_user && @current_user.user_info.handle.blank?
      redirect_to "/profile"
    end
  end

  def memorial
    @current_user = current_user
    @navbar_active = 'memorial'
    # @pilots = UserInfo.where("handle IS NOT NULL AND handle != ''").order("handle DESC") #.sort { |x,y| x.handle <=> y.handle }
    @pilots = UserInfo.where("handle IS NOT NULL AND handle != ''").sort { |x,y| x.handle.downcase <=> y.handle.downcase }
    @pilots = @pilots.reject{ |p| !p.user.rip? }
    if @current_user && @current_user.user_info.handle.blank?
      redirect_to "/profile"
    end
  end

  def profile
    @current_user = current_user
    @pilot = current_user.user_info
    @social = current_user.social_info
    unless params[:button].nil?
      wtf = {}.merge(params.to_unsafe_hash['pilot'])
      wtf['year_started'] = params['date']['year']
      # @pilot.update_attributes(wtf)
      @pilot.update(wtf)
      soc = {}.merge(params.to_unsafe_hash['social'])
      # @social.update_attributes(soc)
      @social.update(soc)
      flash.now[:notice] = "Profile updated."
    end

  end

  def show
    @navbar_active = 'index'
    @current_user = current_user

    @pilot = User.find(params[:id])
    # render :layout => nil
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
    @num_links = Link.all.count
    
  end

  def salute
    @pilot = User.find_by_id(params[:id])
    @pilot.pilot_salutes.find_or_create_by(user: @current_user)
    redirect_to voaw_show_path(@pilot)
  end

end
