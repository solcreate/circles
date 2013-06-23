class CreateInterfaces < ActiveRecord::Migration
  def change
    create_table :interfaces do |t|
      t.string :name
      t.string :default
      t.integer :text_length
      t.integer :decimal_place
      t.string :html
      t.string :select_sql
      t.integer :sort_no

      t.timestamps
    end
  end
end
