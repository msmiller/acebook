class AddThreddedUserFields < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :forum_name, :string, :after => :email
    add_column :users, :forum_admin, :boolean, :after => :email, default: false
    add_column :users, :forum_mod, :boolean, :after => :email, default: false
    add_column :users, :role, :string
  end
end
