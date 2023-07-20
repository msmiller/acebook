class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :rig_env

  def rig_env
    @current_user = current_user
  end
end
