class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy, :print_label, :print_das, :reconciliation]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
    @orders_grid = initialize_grid(Order)
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    #get codes from form
    @codes = @order.get_codes || []
    @deleted_codes = []
    @codes_not_found = []
    @duplicate_codes = []
    logger.debug "my codes are: #{@codes}"

    #go through the attached products and delete whatever was removed from form
    #save deleted codes in @deleted_codes to tell user what codes were removed
    @order.products.each do |attached_product|
       logger.debug  "my attached product number is #{attached_product.codigo.to_s}"
      
      if @codes.include?(attached_product.codigo.to_s) == false
        @deleted_codes << attached_product
        @order.products.delete(attached_product)

      end
 
    end

    # Go through each code and attach the product and set defaults if needed
    @codes.each  do |code|
        # logger.debug "#{code} results in #{Product.where(codigo: code).count}"
        unless  Product.where(codigo: code).count == 0  #if not nil that execute    
          @order.products << Product.where(codigo: code) unless @order.products_with_code(code)
           # logger.debug "You go into the unless block: #{ Product.where(codigo: code)}"
            logger.debug " in #{Product.where(codigo: code).inspect}"
        else
           logger.debug " out #{Product.where(codigo: code).inspect}"
           @codes_not_found << code
        end
          logger.debug " out #{Product.where(codigo: code).count}"
        if Product.where(codigo: code).count > 1
          @duplicate_codes << code
        end
    end
    logger.debug " look at me here #{@codes_not_found}"
    #Set defaults and calculate fields (group fund and payment)

    #counts number of products for Exporting form
    @order.unidades = @order.products.count
    

    @order.products.each do |attached_product|
    logger.debug "My product has #{attached_product.inspect}"
           # Calculate share of group costs
          unless @order.cuenta_del_grupo.blank? || attached_product.precio.nil?
            attached_product.groupo = @order.cuenta_del_grupo * attached_product.precio / 100
            logger.debug  "bang my group cost is #{attached_product.groupo} "    
          else
            attached_product.groupo = 0
          end

          #calculate unidades


          #calculate default packaging costs ($1 for necklaces, $0 for smaller purchases)
          if attached_product.funda.nil? 
            attached_product.funda  = case attached_product.design.product_type.nombre
              when "Collar" 
                1
              else
                0
            end  
          end

         #calcuate default price
          if attached_product.precio.nil?
            attached_product.precio  = case attached_product.design.product_type.nombre
              when "Collar" 
                10
              when "Pulsera"
                7
              when "Aretes"
                5
              else
                0
            end
            attached_product.precio = 10    
          end

          #calculate shared event or order costs
          unless attached_product.precio.nil? 
            attached_product.costos =  attached_product.precio/@order.products.sum(:precio) *  @order.expenses.sum(:valor)
          else
            attached_product.costos = 0
          end

          # Calculate payment for item. Saves changes before calculation and after.
          attached_product.save
          attached_product.pago = attached_product.precio - 
                                  attached_product.funda  - 
                                  attached_product.groupo - 
                                  attached_product.costos 
          attached_product.save

 
    end      


  end

  def print_label
  end

  def print_das
    
  end
  
  def reconciliation
     @artist_group = @order.products.group_by { |t| t.artist_id }
     @artists = Artist.all  
  end
  # GET /orders/new
  def new
    @order = Order.new
    3.times do
      @order.expenses.build
    end
  end

  # GET /orders/1/edit
  def edit

  end


  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    # logger.debug "Here are my attributes: #{@order.attributes.inspect} #{@order.save}"    
    respond_to do |format|
      if @order.save
  
        format.html { redirect_to @order, notice: 'Orden sido creado con éxito.' }
        format.json { render action: 'show', status: :created, location: @order }
      else
        format.html { render action: 'new' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
    # logger.debug "Here are my attributes1: #{@order.attributes.inspect} #{@order.save}"
   
      if @order.update(order_params)
        # logger.debug "Here are my attributes2: #{@order.attributes.inspect} #{@order.save}"
   
        format.html { redirect_to @order, notice: 'El cambio ha sido guardado con éxito.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:customer_id, :gastos, :gastos_descripcion, :cuenta_del_grupo, 
        :detall_de_pedido, :venta, :pago, :estado_de_pedido, :encargado, :fecha_de_finalizacion, 
        :enviar, :fecha_envio, :numero_de_rastreo, :idioma, :email_al_cliente, :pesa_en_gramas, 
        :costos_de_enviar, :unidades, :factura_serie, :factura_numero, :fecha_de_factura, :valor_aduana,
        :codigos_vendido,
        expenses_attributes: [:id, :order_id, :nombre, :valor,:_destroy],
        products_attributes: [:id, :design_id,:codigo,
          :estado,:lugar,:precio,:costos,:funda,:groupo,:pago])
    end
end

















