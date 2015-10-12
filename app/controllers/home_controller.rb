class HomeController < ApplicationController
  before_action :authenticate_client!, only: :reservacion
  layout 'portada', only: :index

  add_breadcrumb "Inicio", :root_path

  def index
    @districts =  District.all.collect {|p| [ p.name, p.id ] }
    @carousel = Carousel.all
    @galeries = Galery.take(6)
  end
  
  def reservacion
    add_breadcrumb "Reserva", :reservacion_path
  end

  def nosotros
    
  end
  
  def nuestros_servicios
    
  end

  def nuestros_vehiculos
    add_breadcrumb "Nuestra Flota", :nuestros_vehiculos_path
    @galeries = Galery.all
  end
  
  def tarifas
    add_breadcrumb "Reserva", :tarifas_path
    @distritos = District.all
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
    add_breadcrumb "Contactenos", :contacto_path
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
