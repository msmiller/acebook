class TimelinesController < ApplicationController

  def index
    @timelines = Timeline.where(:approved => 1).order("year DESC, month DESC")
  end
  
end
