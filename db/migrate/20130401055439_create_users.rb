class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :null => false
      t.string :voting_token
      t.string :access_token
      t.string :reset_token
      t.datetime :token_expiry

      t.timestamps
    end
    add_index :users, :username, :unique => true
    add_index :users, :voting_token
  end
end
