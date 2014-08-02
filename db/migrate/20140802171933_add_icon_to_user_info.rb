class AddIconToUserInfo < ActiveRecord::Migration
  def change
    add_column "user_infos", "icon", :string
  end
end
