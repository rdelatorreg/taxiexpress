class WorkwithusController < ApplicationController
  #before_action :set_workwithu, only: [:new]  
  
  # GET /workwithus
  # GET /workwithus.json  
  def index
    @workwithus = Workwithu.all
    render layout: 'admin'
  end    
  
  def aprobar
  end
  
  def download
    #Ricardo: funciona para abrir el pdf en una nueva pestaña del navegador
    #ejemplo:
    #"#{RAILS_ROOT}/public/system/workwithus/documents/000/000/003/original/cv_prueba.pdf"
    
    "#{RAILS_ROOT}/public/system/workwithus/documents/000/000/003/original/cv_prueba.pdf"
  end
  
  def new
    @workwithus = Workwithu.new
  end
 
  #Ricardo: grabamos la postulacion a nuevo chofer
  # POST /workwithus
  # POST /workwithus.json
  def create
    @workwithus = Workwithu.new(workwithus_params)    
    
    if @workwithus.valid?
      
      respond_to do |format|
        if @workwithus.save
          format.html { redirect_to mensaje_path }
          format.json { render :show, status: :created, location: @workwithus }
        else
          format.html { render :workwithu }
          format.json { render json: @workwithus.errors, status: :unprocessable_entity }
        end
      end      
      
    else
      render :new
      
    end      
  end    

  

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workwithu
      @workwithus = Workwithu.find(params[:id])
    end
    
  def workwithus_params
    #Ricardo: estos parametros son necesarios enviar al mysql(insert) cuando se va a grabar en la tabla
    params.require(:workwithu).permit(:name, :age, :email, :license_number, :document)
  end   
end
