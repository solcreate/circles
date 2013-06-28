class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :node, :null => false
      t.integer :linked_id, :null => false
      t.string :type, :null => false, :default => 'belongs_to'

      t.timestamps
    end
    add_index :links, [:node_id, :linked_id], :unique=>true
  end
end
