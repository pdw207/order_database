class MyDetailsController < ApplicationController
  before_action :set_my_detail, only: [:show, :edit, :update, :destroy]

  # GET /my_details
  # GET /my_details.json
  def index
    @my_details = MyDetail.all
  end

  # GET /my_details/1
  # GET /my_details/1.json
  def show
  end

  def instructions
  end
  
  # GET /my_details/new
  def new
    @my_detail = MyDetail.new
  end

  # GET /my_details/1/edit
  def edit
  end

  # POST /my_details
  # POST /my_details.json
  def create
    @my_detail = MyDetail.new(my_detail_params)

    respond_to do |format|
      if @my_detail.save
        format.html { redirect_to @my_detail, notice: 'Su artículo se ha creado con éxito.' }
        format.json { render action: 'show', status: :created, location: @my_detail }
      else
        format.html { render action: 'new' }
        format.json { render json: @my_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_details/1
  # PATCH/PUT /my_details/1.json
  def update
    respond_to do |format|
      if @my_detail.update(my_detail_params)
        format.html { redirect_to @my_detail, notice: 'El cambio ha sido guardado con éxito.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @my_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_details/1
  # DELETE /my_details/1.json
  def destroy
    @my_detail.destroy
    respond_to do |format|
      format.html { redirect_to my_details_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_detail
      @my_detail = MyDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_detail_params
      params.require(:my_detail).permit(:compania_nombre, :RUC, :direccion_1, :direccion_2, :direccion_3, :email, :cuidad, :provencia, :codigo_postal, :business_phone, :arancel_codigo, :description_arancel, :puerto_embarque, :cuidad_embarque)
    end
end
