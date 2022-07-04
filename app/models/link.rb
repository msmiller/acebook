class Link < ApplicationRecord
 
  belongs_to :user, inverse_of: :links
  
  acts_as_commentable

  def lore_params
    params.require(:lore).permit(:title, :description, :url, :user_id)
  end

  def kind_enum
   [['Active'],['Pending'],['Banned']]
  end

end
