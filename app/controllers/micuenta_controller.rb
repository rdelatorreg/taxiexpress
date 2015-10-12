class MicuentaController < ApplicationController
  before_action :authenticate_client!
  add_breadcrumb "Inicio", :root_path
  add_breadcrumb "Mi Cuenta", :micuenta_principal_path
  
  def principal
  end

  def mis_reservas
    add_breadcrumb "Reservas", :micuenta_mis_reservas_path
    @reservations = current_client.reservations.order(created_at: :desc)
    @status = Parameter.where(:entity_id => 3)
  end

  def mis_direcciones
    add_breadcrumb "Direcciones", :micuenta_mis_reservas_path
    @streets = current_client.mystreets
    
  end
end
