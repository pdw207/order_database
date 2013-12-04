class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.integer :product_type_id
      t.string :nombre
      t.string :detallas
      t.string :nivel
      t.decimal :Tiempo_en_minutos

      t.timestamps
    end
  end
end
