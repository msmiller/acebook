class LoresController < ApplicationController

  def index
    @lores = Lore.all.order("title ASC")
  end

end
