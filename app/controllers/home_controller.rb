class HomeController < ApplicationController
  layout 'portada', only: :index

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
  
  #Ricardo: muestra bandeja de listado de los mensajes ingresados
  def contacto_show
     @contacto = Contact.all  
     
     #Ricardo: Solo el metodo que muestra los mensajes ingresados por el formulario contactenos se
     #mostraran utilizando el layout del admin
     render layout: 'admin'
  end
  
  #Ricardo: Elimina mensaje
  # DELETE /muestra_mensajes/1
  # DELETE /muestra_mensajes/1.json
  def destroy
    @contacto = Contact.find(params[:id]).destroy
    #@contacto.destroy
    #respond_to do |format|
    #  format.html { redirect_to muestra_mensajes_url, notice: 'El mensaje fue eliminado.' }
    #  format.json { head :no_content }
    #end
  end

  
  # Ricardo: crea formulario para ingresar un nuevo ccontactenos
  def contacto
    @contacto = Contact.new
  end   
  
  # Ricardo: muestra la pagina de confirmacion de envio de mensaje a traves de contactenos
  def message
    
  end
  
  #Ricardo: grabamos el mensaje enviado a traves de contactenos
  # POST /home
  # POST /home.json
  def contacto_create
    @contacto = Contact.new(contacto_params)    
    
    if @contacto.valid?
      
      respond_to do |format|
        if @contacto.save
          format.html { redirect_to mensaje_path, notice: 'Tu mensaje ha sido enviado.' }
          format.json { render :show, status: :created, location: @contacto }
        else
          format.html { render :contacto }
          format.json { render json: @contacto.errors, status: :unprocessable_entity }
        end
      end      
      
    else
      flash[:alert] = "Un error ocurrio al enviar este mensaje."
      render :contacto
      
    end      
  end
  def ingresar
    
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contacto
      @contacto = Contact.find(params[:id])
    end
    
  def contacto_params
    #Ricardo: estos parametros son necesarios enviar al mysql(insert) cuando se va a grabar en la tabla
    params.require(:contact).permit(:name, :email, :message, :body)
  end 
  
end
