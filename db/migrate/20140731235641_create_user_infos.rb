class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|

      t.integer :user_id

      t.string  :handle
      t.string  :other_handles
      t.string  :city
      t.string  :state
      t.string  :country

      t.timestamps
    end
  end
end
