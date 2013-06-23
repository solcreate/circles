class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :entity
      t.integer :linked_id
      t.integer :type_id
      t.integer :sort_no

      t.timestamps
    end
    add_index :links, :entity_id
  end
end
