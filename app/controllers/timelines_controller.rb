class TimelinesController < ApplicationController

  include AutoHtml

  def index
    @timelines = Timeline.where(:approved => true).order("year DESC, month DESC")
  end
  
  def new
    @timeline = Timeline.new
    render :layout => nil
  end

  def edit
    @timeline = Timeline.find_by_id(params[:id])
    render :layout => nil
  end

end
