class EntidadesController < ApplicationController
  before_action :set_entidad, only: [:show, :edit, :update, :destroy]
  
  layout 'admin'
  
  # GET /entidades
  # GET /entidades.json
  def index
    @entidades = Entidad.all
  end

  # GET /entidades/1
  # GET /entidades/1.json
  def show
  end

  # GET /entidades/new
  def new
    @entidad = Entidad.new
  end

  # GET /entidades/1/edit
  def edit
  end

  # POST /entidades
  # POST /entidades.json
  def create
    @entidad = Entidad.new(entidad_params)

    respond_to do |format|
      if @entidad.save
        format.html { redirect_to @entidad, notice: 'Entidad was successfully created.' }
        format.json { render :show, status: :created, location: @entidad }
      else
        format.html { render :new }
        format.json { render json: @entidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entidades/1
  # PATCH/PUT /entidades/1.json
  def update
    respond_to do |format|
      if @entidad.update(entidad_params)
        format.html { redirect_to @entidad, notice: 'Entidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @entidad }
      else
        format.html { render :edit }
        format.json { render json: @entidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entidades/1
  # DELETE /entidades/1.json
  def destroy
    @entidad.destroy
    respond_to do |format|
      format.html { redirect_to entidades_url, notice: 'Entidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entidad
      @entidad = Entidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entidad_params
      params.require(:entidad).permit(:Descripcion)
    end
end
