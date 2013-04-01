class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :user, :null => false
      t.references :emote, :null => false
      t.integer :vote, :null => false

      t.timestamps
    end
    add_index :votes, :user_id
    add_index :votes, :emote_id
    add_index :votes, [:user_id, :emote_id]
    add_index :votes, [:emote_id, :vote]
  end
end
