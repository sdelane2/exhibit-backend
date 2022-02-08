class DropUsersCreateUsers < ActiveRecord::Migration[6.0]
  def change
    table_exists?(:users) ? drop_table(:users) : nil 
    create_table :users
    add_column :users, :username, :string
    add_column :users, :password_digest, :string
    add_column :users, :name, :string
  end
end
