module OrdersHelper

    def currency (var)
    	if var.nil?
    		return ""
    	end
    	formated_var = number_with_precision var , precision: 2, delimiter:".", separator: ","
		return "$#{formated_var}"
	end

	def date (date)
		return date.strftime("%d/%m/%y")
	end

	def units(number, type)

		number.pesa_en_gramas ||= 0

		if type == "metric"
			if number.pesa_en_gramas  > 1000 
				value = number.weight "international"
				units = " kg"
			else type == "metric" 
				value = number.pesa_en_gramas
				units = " g"
			end
			value = number_with_precision value , precision: 2, delimiter:".", separator: ","
		elsif type =="english"	
			if number.pesa_en_gramas  > 1000 
				value = number.weight "english"
				units = " lbs"
			else
			 	value = number.weight "english small"
			 	units = " oz"
			end
			value = number_with_precision value, precision: 2, delimiter:",", separator: "."
		else
			return nil
		end

		return value.to_s << units
	end


	def deadline(order)
		time_ago_in_words(order.fecha_de_finalizacion+24.hours)
	end


	def factura_full_number(order)
		first = order.factura_serie
		second = order.factura_numero? ? order.factura_numero.to_s.rjust(7, '0') : " "
		return first.to_s << second.to_s
	end


end
