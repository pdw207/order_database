class Register < ActiveRecord::Base
	attr_accessible :Descripcion, :codigo, :tipo, :paypal, :banco, :payoneer, :obligaciones, :effectivo, :account, :amount
	attr_accessor :account, :amount
end
