class TimelinesController < ApplicationController

  def index
    @timelines = Timeline.where(:approved => true).order("year DESC, month DESC")
  end
  
end
