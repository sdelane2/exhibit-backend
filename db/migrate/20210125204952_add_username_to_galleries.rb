class AddUsernameToGalleries < ActiveRecord::Migration[6.0]
  def change
    add_column :galleries, :username, :string
    add_column :galleries, :password_digest, :string
  end
end
