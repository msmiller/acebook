class CreateFlaggings < ActiveRecord::Migration[7.0]
  def change
    create_table :flaggings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :item, polymorphic: true, null: false
      t.string :type
      t.string :aux

      t.timestamps
    end
    add_index :flaggings, :type
  end
end
