class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.references :seed, :null => false
      t.string :name
      t.references :touch, :null => false
      t.string :default
      t.integer :length
      t.integer :sort_no, :null => false, :default => 0
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :characters, :seed_id
    add_index :characters, :touch_id
  end
end
