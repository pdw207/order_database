class Expense < ActiveRecord::Base
	belongs_to :order
	attr_accessible :nombre, :valor, :order_id
end
