class CreateShapes < ActiveRecord::Migration
  def change
    create_table :shapes do |t|
      t.references :node, :null => false
      t.references :character, :null => false
      t.string :value
      t.string :display

      t.timestamps
    end

    add_index :shapes, :node_id
    add_index :shapes, :character_id
  end
end
