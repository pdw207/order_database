class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :compania
      t.string :nombre_de_contacto
      t.string :email_de_contacto
      t.string :telefono_1
      t.string :telefono_2
      t.string :direccion_1
      t.string :direccion_2
      t.string :direccion_3
      t.string :ciudad
      t.string :estado
      t.string :codigo_postal
      t.string :pais
      t.string :factura_nombre
      t.string :factura_RUC
      t.string :factura_telefono
      t.string :factura_direccion
      t.string :enviar_factura_1
      t.string :enviar_factura_2
      t.string :enviar_factura_3
      t.string :enviar_factura_4
      t.string :enviar_factura_5

      t.timestamps
    end
  end
end
