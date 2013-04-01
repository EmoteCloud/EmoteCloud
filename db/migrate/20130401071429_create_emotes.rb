class CreateEmotes < ActiveRecord::Migration
  def change
    create_table :emotes do |t|
      t.references :deviation, :null => false
      t.references :submitter
      t.string :name, :null => false
      t.integer :votes_up, :default => 0
      t.integer :votes_down, :default => 0
      
      t.timestamps
    end
    add_index :emotes, :deviation_id
    add_index :emotes, :submitter_id
    add_index :emotes, :name
    add_index :emotes, [:name, :deviation_id], :unique => true
  end
end
