class DocumenttypesController < ApplicationController
  before_action :set_documenttype, only: [:show, :edit, :update, :destroy]

  # GET /documenttypes
  # GET /documenttypes.json
  def index
    @documenttypes = Documenttype.all
  end

  # GET /documenttypes/1
  # GET /documenttypes/1.json
  def show
  end

  # GET /documenttypes/new
  def new
    @documenttype = Documenttype.new
  end

  # GET /documenttypes/1/edit
  def edit
  end

  # POST /documenttypes
  # POST /documenttypes.json
  def create
    @documenttype = Documenttype.new(documenttype_params)

    respond_to do |format|
      if @documenttype.save
        format.html { redirect_to @documenttype, notice: 'Documenttype was successfully created.' }
        format.json { render :show, status: :created, location: @documenttype }
      else
        format.html { render :new }
        format.json { render json: @documenttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documenttypes/1
  # PATCH/PUT /documenttypes/1.json
  def update
    respond_to do |format|
      if @documenttype.update(documenttype_params)
        format.html { redirect_to @documenttype, notice: 'Documenttype was successfully updated.' }
        format.json { render :show, status: :ok, location: @documenttype }
      else
        format.html { render :edit }
        format.json { render json: @documenttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documenttypes/1
  # DELETE /documenttypes/1.json
  def destroy
    @documenttype.destroy
    respond_to do |format|
      format.html { redirect_to documenttypes_url, notice: 'Documenttype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_documenttype
      @documenttype = Documenttype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def documenttype_params
      params.require(:documenttype).permit(:name)
    end
end
