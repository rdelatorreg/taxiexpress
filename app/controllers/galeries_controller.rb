class GaleriesController < ApplicationController
  before_action :set_galery, only: [:show, :edit, :update, :destroy]
  layout 'admin'
  # GET /galeries
  # GET /galeries.json
  def index
    @galeries = Galery.all
  end

  # GET /galeries/1
  # GET /galeries/1.json
  def show
  end

  # GET /galeries/new
  def new
    @galery = Galery.new
  end

  # GET /galeries/1/edit
  def edit
  end

  # POST /galeries
  # POST /galeries.json
  def create
    @galery = Galery.new(galery_params)

    respond_to do |format|
      if @galery.save
        format.html { redirect_to @galery, notice: 'Galery was successfully created.' }
        format.json { render :show, status: :created, location: @galery }
      else
        format.html { render :new }
        format.json { render json: @galery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galeries/1
  # PATCH/PUT /galeries/1.json
  def update
    respond_to do |format|
      if @galery.update(galery_params)
        format.html { redirect_to @galery, notice: 'Galery was successfully updated.' }
        format.json { render :show, status: :ok, location: @galery }
      else
        format.html { render :edit }
        format.json { render json: @galery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galeries/1
  # DELETE /galeries/1.json
  def destroy
    @galery.destroy
    respond_to do |format|
      format.html { redirect_to galeries_url, notice: 'Galery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_galery
      @galery = Galery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def galery_params
      params.require(:galery).permit(:title, :description, :image)
    end
end
