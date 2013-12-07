module DesignsHelper

	def select_type
		select(:design, :product_type_id, ProductType.order(:nombre).all.map {|a| [ a.nombre, a.id ] })
	end

	def currency (var)
    	if var.nil?
    		return ""
    	end
    	formated_var = number_with_precision var , precision: 2, delimiter:".", separator: ","
		return "$#{formated_var}"
	end
	
	def bulk_price
		if @design.Tiempo_en_minutos > 0
		currency (@design.Tiempo_en_minutos/60 * 2.20)
		end
	end
end
