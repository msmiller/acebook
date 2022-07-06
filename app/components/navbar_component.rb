# frozen_string_literal: true

class NavbarComponent < ViewComponent::Base
  include Heroicon::ApplicationHelper
  
  def initialize(current_user:, active:)
    @current_user = current_user
    @active = active
  end

  def render?
    true
  end

  def class_for(item)
    @active == item ? 'navactive' : 'navitem'
  end

end
