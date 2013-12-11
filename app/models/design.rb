class Design < ActiveRecord::Base
	attr_accessible :product_type_id, :nombre, :detallas, :nivel, :Tiempo_en_minutos, :url1, :url2, :url3
	has_many :products, inverse_of: :designs
	belongs_to :product_type, inverse_of: :designs

	 # def destroy
  #   	return false if products.any? 
  #   	super
  # 	end

	accepts_nested_attributes_for :products
	validates_presence_of :product_type_id    
end
