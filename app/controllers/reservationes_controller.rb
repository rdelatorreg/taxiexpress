class ReservationesController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  # GET /reservationes
  # GET /reservationes.json
  def index
    @reservationes = Reservation.all
  end

  # GET /reservationes/1
  # GET /reservationes/1.json
  def show
  end

  # GET /reservationes/new
  def new
    @reservation = Reservation.new
  end

  # GET /reservationes/1/edit
  def edit
  end

  # POST /reservationes
  # POST /reservationes.json
  def create
    @reservation = Reservation.new(reservation_params)

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to @reservation, notice: 'Reservation was successfully created.' }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservationes/1
  # PATCH/PUT /reservationes/1.json
  def update
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html { redirect_to @reservation, notice: 'Reservation was successfully updated.' }
        format.json { render :show, status: :ok, location: @reservation }
      else
        format.html { render :edit }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservationes/1
  # DELETE /reservationes/1.json
  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to reservationes_url, notice: 'Reservation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reservation_params
      params.require(:reservation).permit(:source_address, :final_address, :User_id)
    end
end
