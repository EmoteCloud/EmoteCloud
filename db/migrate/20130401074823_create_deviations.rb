class CreateDeviations < ActiveRecord::Migration
  def change
    create_table :deviations do |t|
      t.references :artist, :null => false
      t.integer :deviation_id, :null => false
      t.string :image_url
      t.integer :height
      t.integer :width
      t.boolean :banned, :default => false

      t.timestamps
    end
    add_index :deviations, :artist_id
    add_index :deviations, :deviation_id, :unique => true
  end
end
