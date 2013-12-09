class Register < ActiveRecord::Base
	
	require 'easy-gtalk-bot'


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
      


		bot = GTalk::Bot.new(:email => "rhok.mujeres.cambia@gmail.com", :password => 'rhokingout')
		bot.get_online
		logger.debug  " i got onto google chat #{bot.get_online}"
		bot.on_invitation do |inviter|
		  puts "I have been invited by #{inviter}. Yay!"
		  # do something useful
		  bot.accept_invitation(inviter)
		  bot.message(inviter, "Hello there! Thanks for invitation!")
		end
		
		bot.on_message do |from, text|
			puts "I got message from #{from}: '#{text}'"
			  # do something useful
			bot.message from, "I heard that!"
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

end
