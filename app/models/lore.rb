class Lore < ActiveRecord::Base

  belongs_to :user
  
  include AutoHtml

  KINDS = {
    "jargon" => "Jargon",
    "story" => "Story"
  }

  def lore_params
    params.require(:lore).permit(:title, :body, :user_id)
  end

  def kind_enum
   [['Active'],['Pending'],['Banned']]
  end

end
