# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131205020053) do

  create_table "artists", force: true do |t|
    t.string   "nombre"
    t.string   "papel"
    t.date     "fecha_de_eleccion"
    t.string   "nombre_de_banco"
    t.string   "cuenta_de_banco"
    t.string   "telefono"
    t.string   "direccion_1"
    t.string   "direccion_2"
    t.string   "direccion_3"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nombre_cuenta_de_banco"
  end

  create_table "buyers", force: true do |t|
    t.string   "company"
    t.string   "contact_name"
    t.string   "contact_email"
    t.string   "contact_phone_1"
    t.string   "contact_phone_2"
    t.string   "shipping_address_line_1"
    t.string   "shipping_address_line_2"
    t.string   "factura_information"
    t.string   "special_instructions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "shipping_address_line_3"
    t.string   "factura_information_RUC"
    t.string   "factura_information_phone"
    t.string   "factura_information_address"
    t.string   "special_instructions_2"
    t.string   "special_instructions_3"
    t.string   "special_instructions_4"
    t.string   "store_image_file_name"
    t.string   "store_image_content_type"
    t.integer  "store_image_file_size"
    t.datetime "store_image_updated_at"
    t.decimal  "necklaces_blue"
    t.decimal  "necklaces_yellow"
    t.decimal  "necklaces_green"
    t.decimal  "bracelets"
    t.decimal  "earrings"
    t.decimal  "keychains"
    t.decimal  "wallets"
  end

  create_table "customers", force: true do |t|
    t.string   "compania"
    t.string   "nombre_de_contacto"
    t.string   "email_de_contacto"
    t.string   "telefono_1"
    t.string   "telefono_2"
    t.string   "direccion_1"
    t.string   "direccion_2"
    t.string   "direccion_3"
    t.string   "ciudad"
    t.string   "estado"
    t.string   "codigo_postal"
    t.string   "pais"
    t.string   "factura_nombre"
    t.string   "factura_RUC"
    t.string   "factura_telefono"
    t.string   "factura_direccion"
    t.string   "enviar_factura_1"
    t.string   "enviar_factura_2"
    t.string   "enviar_factura_3"
    t.string   "enviar_factura_4"
    t.string   "enviar_factura_5"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "designs", force: true do |t|
    t.integer  "product_type_id"
    t.string   "nombre"
    t.string   "detallas"
    t.string   "nivel"
    t.decimal  "Tiempo_en_minutos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expenses", force: true do |t|
    t.integer  "order_id"
    t.string   "nombre"
    t.decimal  "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "my_details", force: true do |t|
    t.string   "compania_nombre"
    t.string   "RUC"
    t.string   "direccion_1"
    t.string   "direccion_2"
    t.string   "direccion_3"
    t.string   "email"
    t.string   "cuidad"
    t.string   "provencia"
    t.string   "codigo_postal"
    t.string   "business_phone"
    t.string   "arancel_codigo"
    t.string   "description_arancel"
    t.string   "puerto_embarque"
    t.string   "cuidad_embarque"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "customer_id"
    t.decimal  "cuenta_de_grupo"
    t.string   "detall_de_pedido"
    t.decimal  "venta"
    t.boolean  "pago"
    t.string   "estado_de_pedido"
    t.string   "encargado"
    t.date     "fecha_de_finalizacion"
    t.boolean  "enviar"
    t.date     "fecha_envio"
    t.string   "numero_de_rastreo"
    t.string   "idioma"
    t.boolean  "email_al_cliente"
    t.decimal  "pesa_en_gramas"
    t.integer  "unidades"
    t.string   "factura_serie"
    t.integer  "factura_numero"
    t.date     "fecha_de_factura"
    t.decimal  "valor_aduana"
    t.integer  "cuenta_del_grupo"
    t.string   "codigos_vendido"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders_products", force: true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_types", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.integer  "artist_id"
    t.integer  "design_id"
    t.integer  "codigo"
    t.string   "estado"
    t.string   "lugar"
    t.decimal  "precio"
    t.decimal  "costos"
    t.decimal  "funda"
    t.decimal  "groupo"
    t.decimal  "pago"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
  end

  create_table "registers", force: true do |t|
    t.string   "Descripcion"
    t.string   "codigo"
    t.string   "tipo"
    t.decimal  "paypal"
    t.decimal  "banco"
    t.decimal  "payoneer"
    t.decimal  "obligaciones"
    t.decimal  "effectivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", force: true do |t|
    t.decimal  "amount"
    t.date     "date"
    t.string   "name"
    t.boolean  "export"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "factura_file_name"
    t.string   "factura_content_type"
    t.integer  "factura_file_size"
    t.datetime "factura_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
  end

end
