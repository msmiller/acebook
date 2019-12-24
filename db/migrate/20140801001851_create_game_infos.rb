class CreateGameInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :game_infos do |t|

      t.integer :user_id

      t.boolean :played, :default => false
      t.string  :game_code, :limit => 2
      t.string  :cpid, :limit => 8
      t.string  :country
      t.string  :squadron
      t.string  :plane

      t.timestamps
    end
  end
end
