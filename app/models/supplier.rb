class Supplier < ActiveRecord::Base
	attr_accessible :name, :phone, :address1, :address2, :address3, :contact_name, :email, :tipo, :notes
end
