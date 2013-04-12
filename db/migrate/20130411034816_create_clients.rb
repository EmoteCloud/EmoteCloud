class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name, :null => false
      t.text :description
      t.references :user, :null => false
      t.references :logo
      t.string :public_token, :null => false
      t.boolean :banned, :default => false

      t.timestamps
    end
    add_index :clients, :user_id
    add_index :clients, :public_token
  end
end
