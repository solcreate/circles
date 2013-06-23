class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.references :entity
      t.references :figure
      t.string :value
      t.string :display

      t.timestamps
    end
    add_index :members, :entity_id
    add_index :members, :figure_id
  end
end
