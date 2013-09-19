class CreateBuyersController < ApplicationController
  before_action :set_create_buyer, only: [:show, :edit, :update, :destroy]

  def index
    @create_buyers = CreateBuyer.all
  end

  # GET /create_buyers/1
  # GET /create_buyers/1.json
  def show
  end

  # GET /create_buyers/new
  def new
    @create_buyer = CreateBuyer.new
  end

  # GET /create_buyers/1/edit
  def edit
  end

  # POST /create_buyers
  # POST /create_buyers.json
  def create
    @create_buyer = CreateBuyer.new(create_buyer_params)

    respond_to do |format|
      if @create_buyer.save
        format.html { redirect_to @create_buyer, notice: 'Create buyer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @create_buyer }
      else
        format.html { render action: 'new' }
        format.json { render json: @create_buyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_buyers/1
  # PATCH/PUT /create_buyers/1.json
  def update
    respond_to do |format|
      if @create_buyer.update(create_buyer_params)
        format.html { redirect_to @create_buyer, notice: 'Create buyer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @create_buyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_buyers/1
  # DELETE /create_buyers/1.json
  def destroy
    @create_buyer.destroy
    respond_to do |format|
      format.html { redirect_to create_buyers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_buyer
      @create_buyer = CreateBuyer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def create_buyer_params
      params.require(:create_buyer).permit(:company, :contact_name, :contact_email, :contact_phone_1, :contact_phone_2, :shipping_address_line_1, :shipping_address_line_2, :factura_information, :special_instructions)
    end
end
