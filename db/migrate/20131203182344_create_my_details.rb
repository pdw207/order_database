class CreateMyDetails < ActiveRecord::Migration
  def change
    create_table :my_details do |t|
      t.string :compania_nombre
      t.string :RUC
      t.string :direccion_1
      t.string :direccion_2
      t.string :direccion_3
      t.string :email
      t.string :cuidad
      t.string :provencia
      t.string :codigo_postal
      t.string :business_phone
      t.string :arancel_codigo
      t.string :description_arancel
      t.string :puerto_embarque
      t.string :cuidad_embarque

      t.timestamps
    end
  end
end
