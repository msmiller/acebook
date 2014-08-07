class Timeline < ActiveRecord::Base

  belongs_to :user
  
  def create
    #@user = User.new(user_params)
    # ...
  end

  private

  def timeline_params
    params.require(:timeline).permit(:month, :year, :title, :body, :user_id)
  end

end
