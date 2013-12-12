class Product < ActiveRecord::Base
	attr_accessible :artist_id, :design_id, :codigo, :lugar, :groupo, :costos, :pago,
					:estado, :funda, :precio, :button, :order_id, :location_id, :last_location
    
	belongs_to :location, inverse_of: :products
	belongs_to :artist, inverse_of: :products
	belongs_to :design, inverse_of: :products
	has_and_belongs_to_many :orders
	
	attr_accessor :order_id

 	after_initialize :default_values

    def default_values
      self.precio  ||= 0
      self.funda  ||= 0
      self.pago  ||= 0
	  self.costos  ||= 0
	  self.groupo  ||= 0
	end
end
