class Buyer < ActiveRecord::Base
attr_accessible :company, :contact_name, :contact_email, :contact_phone_1, :contact_phone_2, :shipping_address_line_1, :shipping_address_line_2, :factura_information, :special_instructions
end
