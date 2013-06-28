class CreateSeeds < ActiveRecord::Migration
  def change
    create_table :seeds do |t|
      t.string :name
      t.integer :sort_no, :null => false, :default => 0
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
