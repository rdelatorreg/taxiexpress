class CarBrandsController < ApplicationController
  before_action :set_car_brand, only: [:show, :edit, :update, :destroy]
  layout 'admin'
  
  # GET /car_brands
  # GET /car_brands.json
  def index
    @car_brands = CarBrand.all
  end

  # GET /car_brands/1
  # GET /car_brands/1.json
  def show
  end

  # GET /car_brands/new
  def new
    @car_brand = CarBrand.new
  end

  # GET /car_brands/1/edit
  def edit
  end

  # POST /car_brands
  # POST /car_brands.json
  def create
    @car_brand = CarBrand.new(car_brand_params)

    respond_to do |format|
      if @car_brand.save
        format.html { redirect_to @car_brand, notice: 'Car brand was successfully created.' }
        format.json { render :show, status: :created, location: @car_brand }
      else
        format.html { render :new }
        format.json { render json: @car_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_brands/1
  # PATCH/PUT /car_brands/1.json
  def update
    respond_to do |format|
      if @car_brand.update(car_brand_params)
        format.html { redirect_to @car_brand, notice: 'Car brand was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_brand }
      else
        format.html { render :edit }
        format.json { render json: @car_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_brands/1
  # DELETE /car_brands/1.json
  def destroy
    @car_brand.destroy
    respond_to do |format|
      format.html { redirect_to car_brands_url, notice: 'Car brand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_brand
      @car_brand = CarBrand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_brand_params
      params.require(:car_brand).permit(:name)
    end
end
