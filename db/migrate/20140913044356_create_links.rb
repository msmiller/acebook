class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|

      t.integer :user_id

      t.string  :title
      t.string  :description
      t.string  :url
      t.boolean :approved

      t.timestamps
    end
  end
end
