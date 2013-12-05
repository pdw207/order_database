class RegistersController < ApplicationController
  before_action :set_register, only: [:show, :edit, :update, :destroy]
  before_action :set_accounts, only: [:update, :create]

  # GET /registers
  # GET /registers.json
  def index
    @registers = Register.all
  end

  # GET /registers/1
  # GET /registers/1.json
  def show
  end

  # GET /registers/new
  def new
    @register = Register.new(payoneer: 0, paypal: 0, banco: 0 , effectivo: 0, obligaciones: 0)

  end

  # GET /registers/1/edit
  def edit
  end

  # POST /registers
  # POST /registers.json
  def create
    @register = Register.new(register_params)

    respond_to do |format|
      if @register.save
        format.html { redirect_to @register, notice: 'Register was successfully created.' }
        format.json { render action: 'show', status: :created, location: @register }
      else
        format.html { render action: 'new' }
        format.json { render json: @register.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registers/1
  # PATCH/PUT /registers/1.json
  def update
    respond_to do |format| 
      if @register.update(register_params)
         # logger.debug  "I can access #{@register.amount}"
        format.html { redirect_to @register, notice: 'Register was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @register.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registers/1
  # DELETE /registers/1.json
  def destroy
    @register.destroy
    respond_to do |format|
      format.html { redirect_to registers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_register
      @register = Register.find(params[:id])
    end

    def set_accounts
      if @register.account == "Effectivo"
          logger.debug  "i input something effectivo"
      elsif @register.account == "Banco"
          logger.debug  "I can access #{@register.amount}"
      elsif @register.account == "Paypal"
          logger.debug  "I can access #{@register.amount}"
      elsif @register.account == "Payoneer"
          logger.debug  "I can access #{@register.amount}"
      else 
          logger.debug  "I can access #{@register.amount}"
      end
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def register_params
      params.require(:register).permit(:Descripcion, :codigo, :tipo, :paypal, :banco, :payoneer, :obligaciones, :effectivo, :account, :amount)
    end
end
