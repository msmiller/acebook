class LoresController < ApplicationController

  def index
    @lores = Lore.where(:approved => true).order("title ASC")
  end

  def new
    @lore = Lore.new
    render :layout => nil
  end

  def edit
    @lore = Lore.find_by_id(params[:id])
    render :layout => nil
  end

end
