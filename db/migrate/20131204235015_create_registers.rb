class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.string :Descripcion
      t.string :codigo
      t.string :tipo
      t.decimal :paypal
      t.decimal :banco
      t.decimal :payoneer
      t.decimal :obligaciones
      t.decimal :effectivo

      t.timestamps
    end
  end
end
