class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.references :seed, :null => false
      t.integer :related_id, :null => false
      t.string :type, :null => false, :default => 'belongs_to'

      t.timestamps
    end
    add_index :relations, [:seed_id, :related_id], :unique=>true
  end
end
