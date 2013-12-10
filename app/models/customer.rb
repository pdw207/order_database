class Customer < ActiveRecord::Base

    attr_accessible :compania, :nombre_de_contacto, :email_de_contacto, :telefono_1, :telefono_2, 
	:direccion_1, :direccion_2, :direccion_3, :ciudad, :estado, :codigo_postal,
	:pais, :factura_nombre, :factura_RUC, :factura_telefono, :factura_direccion, 
	:enviar_factura_1, :enviar_factura_2, :enviar_factura_3, :enviar_factura_4, :enviar_factura_5,
	:green, :blue, :yellow, :bracelet, :earring , :keychain, :coin_purse

	has_many :orders, inverse_of: :customers
	accepts_nested_attributes_for :orders
end
