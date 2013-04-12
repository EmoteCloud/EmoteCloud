class CreateVotingTokens < ActiveRecord::Migration
  def change
    create_table :voting_tokens do |t|
      t.references :user, :null => false
      t.references :client
      t.string :token, :null => false
      t.boolean :revoked, :default => false

      t.timestamps
    end
    add_index :voting_tokens, [:user_id, :client_id]
    add_index :voting_tokens, :user_id
    add_index :voting_tokens, :client_id
    add_index :voting_tokens, :token
  end
end
