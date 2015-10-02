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
    @contacto = Contact.new
  end   
  
  def message
    
  end
  # POST /home
  # POST /home.json
  def contacto_create
    @contacto = Contact.new(contacto_params)    
    
    if @contacto.valid?
      
      respond_to do |format|
        if @contacto.save
          format.html { redirect_to mensaje_path, notice: 'Your messages has been sent.' }
          format.json { render :show, status: :created, location: @contacto }
        else
          format.html { render :contacto }
          format.json { render json: @contacto.errors, status: :unprocessable_entity }
        end
      end      
      
    else
      flash[:alert] = "An error occurred while delivering this message."
      render :contacto
      
    end      
  end
  def ingresar
    
  end
  
  private
  def contacto_params
    params.require(:contact).permit(:name, :email, :message, :body)
  end 
  
end
