class AddIconToUserInfo < ActiveRecord::Migration[6.0]
  def change
    add_column "user_infos", "icon", :string
  end
end
