class Product < ActiveRecord::Base
	attr_accessible :artist_id, :design_id, :codigo, :lugar, 
					:estado, :funda, :precio, :button, :order_id
    

	belongs_to :artist
	belongs_to :design, inverse_of: :products
	has_and_belongs_to_many :orders
	attr_accessor :order_id
end
