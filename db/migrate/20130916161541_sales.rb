class Sales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.decimal :amount
      t.date :date
      t.string :name
      t.boolean :export

      t.timestamps
    end
  end
end
