class LoresController < ApplicationController

  def index
    @lores = Lore.where(:approved => 1).order("title ASC")
  end

end
