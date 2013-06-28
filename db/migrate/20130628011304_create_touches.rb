class CreateTouches < ActiveRecord::Migration
  def change
    create_table :touches do |t|
      t.string :name
      t.integer :decimal_place
      t.string :html
      t.string :source_sql

      t.timestamps
    end
  end
end
