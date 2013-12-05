class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy, :product_edit]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    @products_grid = initialize_grid(Product, :include => [:design, :artist, :location], :order => 'codigo')

 
    
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit

  end

  def product_edit
    @product.order_id = params[:order_id]
    logger.debug "and hwsda #{ @product.order_id}"
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    logger.debug "Here are my attributes: #{@product.attributes.inspect} #{@product.save}"
      if @product.save
        redirect_to action: 'new', notice: 'Su nuevo producto fue agregado con éxito.'
      else
        render action: 'new'
      end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
    #logger.debug "and hwsda2 #{ @product.orders.first.id}"
     if params[:button] == "Actualizar" && @product.update(product_params)
        format.html { redirect_to action: 'show', controller: 'orders', id: @product.orders.first.id,  notice: 'PSu artículo se ha creado con éxito.' }
        format.json { head :no_content }
     end
      if @product.update(product_params)
        logger.debug "Here are my attributes: #{@product.attributes.inspect} "
        format.html { redirect_to action: 'index' , notice: 'El cambio ha sido guardado con éxito.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end



  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end
      # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:artist_id, :design_id, :codigo, :lugar, :estado, :funda, :precio, :button, :order_id, :location_id)
    end

end








