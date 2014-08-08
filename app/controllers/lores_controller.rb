class LoresController < ApplicationController

  def index
    @lores = Lore.where(:approved => true).order("title ASC")
  end

end
