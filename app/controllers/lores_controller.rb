class LoresController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]

  before_action do
    @navbar_active = 'lore'
  end

  def index
    @lores = Lore.where(:approved => true).sort{ |x,y| x.title.downcase <=> y.title.downcase }
  end

  def new
    @lore = Lore.new
    # render :layout => nil
  end

  def edit
    @lore = Lore.find_by_id(params[:id])
    # render :layout => nil
  end

  def update
		@lore = Lore.find_by_id(params[:id])
		@lore.update(lore_params)
		redirect_to '/lore'
	end
	
	def create
		@lore = Lore.new
		@lore.update(lore_params)
		@lore.update_attribute(:user_id, current_user.id)
    if current_user.has_published_content?
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
