class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy, :payments]

  # GET /artists
  # GET /artists.json
  def index
    @artists = Artist.order(:nombre).all
  end

  # GET /artists/1
  # GET /artists/1.json
  def show
  end

  def payments
    @products=Product.where(artist_id: params[:id] )
    # @sales = Order.all.where(estado_de_pedido: "Cerrado", pago: false)
    @product_group = @products.group_by { |t| t.location_id }
    @locations = Location.all
  end

  # GET /artists/new
  def new
    @artist = Artist.new
  end

  # GET /artists/1/edit
  def edit
  end

  # POST /artists
  # POST /artists.json
  def create
    @artist = Artist.new(artist_params)

    respond_to do |format|
      if @artist.save
        format.html { redirect_to @artist, notice: 'Su artículo se ha creado con éxito.' }
        format.json { render action: 'show', status: :created, location: @artist }
      else
        format.html { render action: 'new' }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artists/1
  # PATCH/PUT /artists/1.json
  def update
    respond_to do |format|
      if @artist.update(artist_params)
        format.html { redirect_to @artist, notice: 'El cambio ha sido guardado con éxito.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artists/1
  # DELETE /artists/1.json
  def destroy
    @artist.destroy
    respond_to do |format|
      format.html { redirect_to artists_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
      @artist = Artist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artist_params
      params.require(:artist).permit(:nombre, :papel, :nombre_cuenta_de_banco, :fecha_de_eleccion, :nombre_de_banco, :cuenta_de_banco, :telefono, :direccion_1, :direccion_2, :direccion_3, :beg_pago, :beg_venta, :beg_grupo)
    end
end
