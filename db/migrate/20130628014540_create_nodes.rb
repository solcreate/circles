class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.references :seed, :null => false
      t.string :name
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :nodes, :seed_id
  end
end
