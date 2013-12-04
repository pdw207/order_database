class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.decimal :cuenta_de_grupo
      t.string :detall_de_pedido
      t.decimal :venta
      t.boolean :pago
      t.string :estado_de_pedido
      t.string :encargado
      t.date :fecha_de_finalizacion
      t.boolean :enviar
      t.date :fecha_envio
      t.string :numero_de_rastreo
      t.string :idioma
      t.boolean :email_al_cliente
      t.decimal :pesa_en_gramas
      t.integer :unidades
      t.string :factura_serie
      t.integer :factura_numero
      t.date :fecha_de_factura
      t.decimal :valor_aduana
      t.integer :cuenta_del_grupo
      t.string :codigos_vendido

      t.timestamps
    end
  end
end
