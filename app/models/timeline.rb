class Timeline < ApplicationRecord

  belongs_to :user
  
  # include AutoHtml

  acts_as_commentable

  KINDS = {
    "convention" => "Convention",
    "scenario" => "Scenario",
    "news" => "Game/Company News",
    "event" => "Other Event"
  }

  HEROICONS = {
    "convention" => "briefcase",
    "scenario" => "fire",
    "news" => "newspaper",
    "event" => "calendar"
  }

  def create
    #@user = User.new(user_params)
    # ...
  end

  def heroicon_for
    HEROICONS[kind]
  end

  private

  def timeline_params
    params.require(:timeline).permit(:month, :year, :title, :body, :game, :kind)
  end

end
