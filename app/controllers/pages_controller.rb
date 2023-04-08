# frozen_string_literal: true

class PagesController < ApplicationController
  include HighVoltage::StaticPage

  skip_before_action :authenticate_user!

  before_action :set_navbar_active

  def set_navbar_active
    @navbar_active = 'despair' if params[:id] == 'demotivators'
    @navbar_active = 'videos' if params[:id] == 'videos'
  end
end
