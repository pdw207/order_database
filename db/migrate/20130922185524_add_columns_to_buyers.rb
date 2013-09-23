class AddColumnsToBuyers < ActiveRecord::Migration
  def change
    add_column :buyers, :shipping_address_line_3, :string
    add_column :buyers, :factura_information_RUC, :string
    add_column :buyers, :factura_information_phone, :string
    add_column :buyers, :factura_information_address, :string
    add_column :buyers, :special_instructions_2, :string
    add_column :buyers, :special_instructions_3, :string
    add_column :buyers, :special_instructions_4, :string
  end
end
