class AddressesController < ApplicationController
    def new
        @address = Address.new
    end
    
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_params
      params.require(:address).permit(:district_id, :flag, :reservation_id, :address)
    end    
end
