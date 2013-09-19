class Sale < ActiveRecord::Base
attr_accessible :date, :name, :amount, :export, :factura
has_attached_file :factura, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
validates_attachment_size :factura, :less_than => 5.megabytes
validates_attachment_content_type :factura, :content_type => ['image/jpeg', 'image/png']
validates_presence_of :amount, :date 

def fix_double_errors_in_paperclip
	def shift hash, key
	  [key, hash.delete(key)] # removes key/value pair
	  # [key, hash[key]] # leaves key/value pair
	end
	shift array, :factura          
end

end
