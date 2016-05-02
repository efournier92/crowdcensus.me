class AddNameToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :first_name, :string, null: false
    add_column :admin_users, :last_name,  :string
  end
end
