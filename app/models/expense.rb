class Expense < ActiveRecord::Base
	belongs_to :order
	attr_accessible :nombre, :valor
end
