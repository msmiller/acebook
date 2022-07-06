class PopulateForumNames < ActiveRecord::Migration[7.0]
  def change
    User.all.each do |user|
      user.user_info.save
    end
  end
end
