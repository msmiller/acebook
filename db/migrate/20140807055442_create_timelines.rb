class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|

      t.integer :user_id

      t.integer :month
      t.integer :year
      t.string  :title
      t.text    :body

      t.timestamps
    end
  end
end
