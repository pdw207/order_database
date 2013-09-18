class Sale < ActiveRecord::Base
attr_accessible :date, :name, :amount, :export, :factura
has_attached_file :factura, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

end
