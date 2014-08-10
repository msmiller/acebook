class LoresController < ApplicationController

  def index
    @lores = Lore.where(:approved => true).order("title ASC")
  end

  def new
    @lore = Lore.new
    render :layout => nil
  end

end
