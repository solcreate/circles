class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.references :idea
      t.string :name
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :entities, :idea_id
  end
end
