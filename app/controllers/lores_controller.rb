class LoresController < ApplicationController

  def index
    @lores = Lore.where(:approved => true).sort{ |x,y| x.title.downcase <=> y.title.downcase }
  end

  def new
    @lore = Lore.new
    render :layout => nil
  end

  def edit
    @lore = Lore.find_by_id(params[:id])
    render :layout => nil
  end

	def update
		@lore = Lore.find_by_id(params[:id])
		@lore.update_attributes(lore_params)
		redirect_to '/lore'
	end
	
	def create
		@lore = Lore.new
		@lore.update_attributes(lore_params)
		@lore.update_attribute(:user_id, current_user.id)
		if (current_user.lores.count + current_user.lores.count) > 1
			@lore.update_attribute(:approved, true)
		else
			@lore.update_attribute(:approved, false)
		end
		redirect_to '/lore'
	end

  private

  def lore_params
    params.require(:lore).permit(:title, :body, :game, :kind)
  end
  
end
