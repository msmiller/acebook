# frozen_string_literal: true

class FooterComponent < ViewComponent::Base
  def initialize(current_user:)
    @current_user = current_user
    @numpilots = User.count
    @num_pending_lores = (Lore.count - Lore.where(:approved => true).count)
    @num_pending_timelines = (Timeline.count - Timeline.where(:approved => true).count)
    @num_pending_links = (Link.count - Link.where(:approved => true).count)
  end

  def render?
    true
  end
end
