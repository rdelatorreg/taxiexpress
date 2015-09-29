class HomeController < ApplicationController
  

  def index
    @districts =  District.all.collect {|p| [ p.name, p.id ] }
    @reservation = Reservation.new
  end
  
  def procesa_reserva
    
  end

  def nosotros
    
  end
  
  def nuestros_servicios
    
  end
  
  def tarifas
    
  end
  
  def trabaja_nosotros
    
  end
  
  def contacto
    
  end   
  
  def ingresar
    
  end
  
end
