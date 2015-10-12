class MystreetsController < ApplicationController
  before_action :set_mystreet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_client!
  
  add_breadcrumb "Inicio", :root_path
  add_breadcrumb "Mi Cuenta", :micuenta_principal_path
  # GET /mystreets
  # GET /mystreets.json
  def index
    add_breadcrumb "Direcciones"
    @mystreets = current_client.mystreets
  end

  # GET /mystreets/1
  # GET /mystreets/1.json
  def show
  end

  # GET /mystreets/new
  def new
    add_breadcrumb "Nuevo"
    @mystreet = Mystreet.new
    @districts = District.all
  end

  # GET /mystreets/1/edit
  def edit
    add_breadcrumb "Editar"
    @districts = District.all
  end

  # POST /mystreets
  # POST /mystreets.json
  def create
    @mystreet = Mystreet.new(mystreet_params)
    @mystreet.client_id = current_client.id

    respond_to do |format|
      if @mystreet.save
        format.html { redirect_to @mystreet, notice: 'Mystreet was successfully created.' }
        format.json { render :show, status: :created, location: @mystreet }
      else
        format.html { render :new }
        format.json { render json: @mystreet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mystreets/1
  # PATCH/PUT /mystreets/1.json
  def update
    respond_to do |format|
      if @mystreet.update(mystreet_params)
        format.html { redirect_to @mystreet, notice: 'Mystreet was successfully updated.' }
        format.json { render :show, status: :ok, location: @mystreet }
      else
        format.html { render :edit }
        format.json { render json: @mystreet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mystreets/1
  # DELETE /mystreets/1.json
  def destroy
    @mystreet.destroy
    respond_to do |format|
      format.html { redirect_to mystreets_url, notice: 'Mystreet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mystreet
      @mystreet = Mystreet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mystreet_params
      params.require(:mystreet).permit(:district_id, :street)
    end
end
