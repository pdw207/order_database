class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :company
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone_1
      t.string :contact_phone_2
      t.string :shipping_address_line_1
      t.string :shipping_address_line_2
      t.string :factura_information
      t.string :special_instructions

      t.timestamps
    end
  end
end
