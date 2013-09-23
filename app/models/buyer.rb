class Buyer < ActiveRecord::Base
attr_accessible :company, :contact_name, :contact_email, :store_image,
	:contact_phone_1, :contact_phone_2, :shipping_address_line_1, 
	:shipping_address_line_2, :factura_information, :special_instructions, :shipping_address_line_3,
    :factura_information_RUC, :factura_information_phone, :factura_information_address, 
    :special_instructions_2, :special_instructions_3, :special_instructions_4, 
    :necklaces_blue, :necklaces_yellow, :necklaces_green, :bracelets, :earrings,:keychains, :wallets
	
has_attached_file :store_image, :styles => { :medium => "500x500", :thumb => "100x100>", :thumb => "100x100>"  }, :default_url => "/images/:style/missing.png"
validates_attachment_size :store_image, :less_than => 5.megabytes
validates_attachment_content_type :store_image, :content_type => ['image/jpeg', 'image/png']
end
