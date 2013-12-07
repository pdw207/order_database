module RegistersHelper

def total_cash
	 @registers.sum(:payoneer) + @registers.sum(:paypal) +  @registers.sum(:banco) +  @registers.sum(:effectivo) + @registers.sum(:obligaciones)
end

end
