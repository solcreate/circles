class CreateFigures < ActiveRecord::Migration
  def change
    create_table :figures do |t|
      t.references :idea
      t.string :name
      t.references :interface
      t.string :default
      t.integer :sort_no
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :figures, :idea_id
    add_index :figures, :interface_id
  end
end
