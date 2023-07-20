class LinksController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]

  before_action do
    @navbar_active = 'links'
  end

  def index
    @links = Link.where(:approved => true).sort{ |x,y| x.title.downcase <=> y.title.downcase }
  end

  def new
    @link = Link.new
  end

  def edit
    @link = Link.find_by_id(params[:id])
  end

  def update
    @link = Link.find_by_id(params[:id])
    @link.update(link_params)
    redirect_to '/links'
  end
  
  def create
    @link = Link.new
    @link.update(link_params)
    @link.update_attribute(:user_id, current_user.id)
    if current_user.has_published_content?
      @link.update_attribute(:approved, true)
    else
      @link.update_attribute(:approved, false)
    end
    redirect_to '/links'
  end

  private

  def link_params
    params.require(:link).permit(:title, :description, :url)
  end

end
