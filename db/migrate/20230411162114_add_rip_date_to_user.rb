class AddRipDateToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :rip_date, :date, :after => :rip
  end
end
