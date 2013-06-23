class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.references :idea
      t.integer :related_id
      t.integer :type_id
      t.integer :sort_no

      t.timestamps
    end
    add_index :relations, :idea_id
  end
end
