class Timeline < ActiveRecord::Base

  belongs_to :user
  
  include AutoHtml

  KINDS = {
    "convention" => "Convention",
    "scenario" => "Scenario",
    "news" => "Game/Company News",
    "event" => "Other Event"
  }
  
  def create
    #@user = User.new(user_params)
    # ...
  end

  private

  def timeline_params
    params.require(:timeline).permit(:month, :year, :title, :body, :game, :kind)
  end

end
