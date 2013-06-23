class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :name
      t.integer :sort_no
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
