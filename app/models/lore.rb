class Lore < ActiveRecord::Base

  belongs_to :user

  def lore_params
    params.require(:lore).permit(:title, :body, :user_id)
  end

end
