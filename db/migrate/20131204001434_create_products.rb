class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :artist_id
      t.integer :design_id
      t.integer :codigo
      t.string :estado
      t.string :lugar
      t.decimal :precio
      t.decimal :costos
      t.decimal :funda
      t.decimal :groupo
      t.decimal :pago

      t.timestamps
    end
  end
end
