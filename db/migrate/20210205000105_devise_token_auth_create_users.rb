class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[6.0]
  def change
    
    create_table(:users) do |t|
      ## Required
      t.string :provider, :null => false, :default => "email"
      t.string :uid, :null => false, :default => ""

      ## Database authenticatable
      t.string :encrypted_password, :null => false, :default => ""

      

      ## Rememberable
      t.datetime :remember_created_at

     

      ## Lockable
      # t.integer  :failed_attempts, :default => 0, :null => false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      ## User Info
      t.string :username
      

      ## Tokens
      t.json :tokens

      t.timestamps
    end

    add_index :users, [:uid, :provider],     unique: true
    # add_index :users, :unlock_token,       unique: true
  end
end
