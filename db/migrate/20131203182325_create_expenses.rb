class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :order_id
      t.string :nombre
      t.decimal :valor

      t.timestamps
    end
  end
end
