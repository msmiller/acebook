class AddRipToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :rip, :boolean, :after => :email, default: false
  end
end
