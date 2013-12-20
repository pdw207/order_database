class Register < ActiveRecord::Base
	


	attr_accessible :Descripcion, :codigo, :tipo, :paypal, :banco, :payoneer, :obligaciones, :effectivo, :account, :amount
    before_save :set_accounts

    def set_accounts

  	  #Make expenses negative, income positive, transfer not effected
    	if tipo == "Ingresos" 
      		self.amount = amount.abs unless amount.nil?
      		allocate_to_account
    	elsif tipo == "Gastos"
			self.amount = -amount.abs unless amount.nil?
			allocate_to_account
    	else

    	end
      


	

      #set account
      def allocate_to_account
		# Set all accounts to zero

  	  	  self.payoneer =  0
	      self.paypal = 0
	      self.banco = 0 
	      self.effectivo = 0
	      self.obligaciones = 0
	      if account == "Efectivo"
	          self.effectivo = amount
	      elsif account == "Banco"
	          self.banco = amount   
	      elsif account == "Paypal"
	          self.paypal = amount 
	      elsif account == "Payoneer"
	          self.payoneer = amount
	      else 
	          self.obligaciones = amount
	      end
	    end
    end

    def Descripcion
      attributes['Descripcion'] ? attributes['Descripcion'] : "-"
    end

end
