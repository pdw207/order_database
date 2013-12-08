class Order < ActiveRecord::Base
	attr_accessible :customer_id, :gastos, :gastos_descripcion, :cuenta_del_grupo, 
	        :detall_de_pedido, :venta, :pago, :estado_de_pedido, :encargado, :fecha_de_finalizacion, 
	        :enviar, :fecha_envio, :numero_de_rastreo, :idioma, :email_al_cliente, :pesa_en_gramas, 
	        :costos_de_enviar, :unidades, :factura_serie, :factura_numero, :fecha_de_factura, :valor_aduana,
	        :codigos_vendido,:location_id,
	        :expenses_attributes,
        	:products_attributes,
        	:locations_attributes
    before_update :set_location
    before_create :set_location

	belongs_to :customer, inverse_of: :orders
	belongs_to :location, inverse_of: :orders
	has_many :expenses
	has_and_belongs_to_many :products

	accepts_nested_attributes_for :expenses, :allow_destroy => true	
	accepts_nested_attributes_for :products
	validates_presence_of :customer_id

 	
 	after_initialize :default_values


	def weight(units)
		if units == "international"
			result = pesa_en_gramas? ? (pesa_en_gramas/1000).round(2) : "0"
		elsif units == "english"
			pesa_en_gramas? ? (pesa_en_gramas*0.00220462).round(2): "0"
		elsif units == "english small"
			pesa_en_gramas? ? (pesa_en_gramas*0.035274).round(2): "0"
		end
	end


	def get_codes
  		self.codigos_vendido.split(",").each {|code|code.strip!} unless self.codigos_vendido.nil? 
	end

	def products_with_code(code)
		self.products.where(codigo: code).first
	end


	def calcuated_sale(products)
		self.product.precio - product.funda - product.groupo   - product.costos 
	end

	private
    
    def default_values
      self.cuenta_del_grupo  ||= 20
      self.factura_serie  ||= "001-001-"
    end

    def set_location

  	logger.debug "I am closed order #{location_id}"
	    	if estado_de_pedido == "Cerrado"
	        	#Cycle through products connected to order for closed orders
	        	products.map do |product|
	        		logger.debug "My location ID on product.codigo is : #{product.location_id}" 	
	       	 		
	       	 		#If consignment order set location to location indicated in order or if cash order set as sold
	       	 		if pago
	       	 			product.location_id = location_id
		       	 	else
		       	 		product.location_id = 2	
		       	 	end
		       	 	product.save
	       	 	end
	       	else
	       		products.map do |product|
	        		if pago
	       	 			product.location_id = 1
		       	 	else
		       	 		product.location_id = 1	

		       	 	end
		       	 	product.save
	       	 	end
	       	end
   	end
end

