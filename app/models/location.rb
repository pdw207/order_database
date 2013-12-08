class Location < ActiveRecord::Base
	attr_accessible :location
	has_many :products, inverse_of: :Location
	has_many :orders, inverse_of: :Location
	accepts_nested_attributes_for :products
	
end
