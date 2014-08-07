class TimelinesController < ApplicationController

  def index
    @timelines = Timeline.all.order("year DESC, month DESC")
  end
  
end
