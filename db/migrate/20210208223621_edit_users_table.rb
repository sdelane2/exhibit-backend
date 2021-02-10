class EditUsersTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :uid, :string
    remove_column :users, :encrypted_password, :string
    remove_column :users, :tokens, :json

  end
end
