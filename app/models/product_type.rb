class ProductType < ActiveRecord::Base
	attr_accessible :nombre
	has_many :designs, inverse_of: :ProductType
	
	accepts_nested_attributes_for :designs

	# def destroy
 #    	return false if designs.any? 
 #    	super
 #  	end
end
