class Design < ActiveRecord::Base
	attr_accessible :product_type_id, :nombre, :detallas, :nivel, :Tiempo_en_minutos
	has_many :products, inverse_of: :designs
	belongs_to :product_type, inverse_of: :designs

	accepts_nested_attributes_for :products
	validates_presence_of :product_type_id    
end
