class ParametersController < ApplicationController
  before_action :set_parameter, only: [:show, :edit, :update, :destroy]
  layout 'admin'
  # GET /parameters
  # GET /parameters.json
  def index
    @entity = Entity.find(params[:entity_id])
    @parameters = @entity.parameters
  end

  # GET /parameters/1
  # GET /parameters/1.json
  def show
  end

  # GET /parameters/new
  def new
    @entity = Entity.find(params[:entity_id])
    @parameter = @entity.parameters.build
  end

  # GET /parameters/1/edit
  def edit
    @entity = Entity.find(params[:entity_id])
    @parameter = Parameter.find(params[:id])
  end

  # POST /parameters
  # POST /parameters.json
  def create
    @entity = Entity.find(params[:entity_id])
    @parameter = @entity.parameters.create(parameter_params)

    respond_to do |format|
      if @parameter.save
        format.html { redirect_to [@entity, @parameter], notice: 'Parameter was successfully created.' }
        format.json { render :show, status: :created, location: @parameter }
      else
        format.html { render :new }
        format.json { render json: @parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parameters/1
  # PATCH/PUT /parameters/1.json
  def update
    respond_to do |format|
      if @parameter.update(parameter_params)
        format.html { redirect_to [@parameter.entity, @parameter], notice: 'Parameter was successfully updated.' }
        format.json { render :show, status: :ok, location: @parameter }
      else
        format.html { render :edit }
        format.json { render json: @parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parameters/1
  # DELETE /parameters/1.json
  def destroy
    @parameter.destroy
    respond_to do |format|
      format.html { redirect_to entity_parameters_url, notice: 'Parameter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parameter
      @parameter = Parameter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parameter_params
      params.require(:parameter).permit(:text, :value, :entity_id)
    end
end
