class Artist < ActiveRecord::Base
	attr_accessible :nombre, :papel, :fecha_de_eleccion, 
	:nombre_de_banco, :cuenta_de_banco, :telefono, 
	:direccion_1, :direccion_2, :direccion_3, :nombre_cuenta_de_banco

	has_many :products
	has_many :designs, through: :products
	has_many :product_types, through: :designs


	accepts_nested_attributes_for :products


end
