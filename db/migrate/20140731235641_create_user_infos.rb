class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|

      t.integer :user_id

      t.string  :handle
      t.string  :name
      t.string  :other_handles
      t.string  :squadron
      t.string  :city
      t.string  :state
      t.string  :country

      t.text    :message

      t.string  :planes

      t.string  :aw_cpid, :limit => 8
      t.string  :wb_cpid, :limit => 8
      t.string  :ah_cpid, :limit => 8

      t.string  :aw_country
      t.string  :wb_country
      t.string  :ah_country

      t.timestamps
    end
  end
end
