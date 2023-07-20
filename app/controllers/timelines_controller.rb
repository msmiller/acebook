# frozen_string_literal: true

class TimelinesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  before_action do
    @navbar_active = 'timeline'
  end

  def index
    @timelines = Timeline.where(approved: true).order('year DESC, month DESC')
  end

  def new
    @timeline = Timeline.new
  end

  def edit
    @timeline = Timeline.find_by_id(params[:id])
  end

  def update
    @timeline = Timeline.find_by_id(params[:id])
    @timeline.update(timeline_params)
    redirect_to '/timeline'
  end

  def create
    @timeline = Timeline.new
    @timeline.update(timeline_params)
    @timeline.update_attribute(:user_id, current_user.id)
    if current_user.has_published_content?
      @timeline.update_attribute(:approved, true)
    else
      @timeline.update_attribute(:approved, false)
    end
    redirect_to '/timeline'
  end

  private

    def timeline_params
      params.require(:timeline).permit(:month, :year, :title, :body, :game, :kind)
    end
end
