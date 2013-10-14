class BuyersController < ApplicationController
  before_action :set_buyer, only: [:show, :edit, :update, :destroy]

  def index
    @buyers = Buyer.all
    @buyers_grid = initialize_grid(Buyer)
  end

  def show
  end

  def new
    @buyer = Buyer.new
  end

  def edit
  end

  def create
      @buyer = Buyer.new(buyer_params)
      if @buyer.save
        redirect_to @buyer, notice: 'Buyer was successfully created.' 
      else
        render action: 'new' 
      end
  end


  def update
        logger.debug "got to this point"
      if @buyer.update(buyer_params)
        logger.debug "Got to update successful"
        redirect_to @buyer, notice: 'Buyer was successfully updated.' 
      else
        logger.debug "failed update"
        render action: 'edit' 
      end
  end

  def destroy
    @buyer.destroy
    redirect_to buyers_url 
  end



    # Use callbacks to share common setup or constraints between actions.
    def set_buyer
       @buyer = Buyer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buyer_params
      params.require(:buyer).permit(:company, :contact_name, :contact_email, :contact_phone_1, :contact_phone_2, :shipping_address_line_1, :shipping_address_line_2,
:shipping_address_line_3, :factura_information, :special_instructions,
    :factura_information_RUC, :factura_information_phone, :factura_information_address, 
    :special_instructions_2, :special_instructions_3, :special_instructions_4, :store_image,
    :necklaces_blue, :necklaces_yellow, :necklaces_green, :bracelets, :earrings,:keychains, :wallets


        )
    end
end
