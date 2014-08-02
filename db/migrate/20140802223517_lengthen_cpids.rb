class LengthenCpids < ActiveRecord::Migration
  def up
    change_column :user_infos, :aw_cpid, :string, :limit => 16
    change_column :user_infos, :wb_cpid, :string, :limit => 16
    change_column :user_infos, :ah_cpid, :string, :limit => 16
  end

  def down
  end

end
