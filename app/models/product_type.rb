class ProductType < ActiveRecord::Base
	attr_accessible :nombre
	has_many :designs, inverse_of: :ProductType
	
	accepts_nested_attributes_for :designs
end
