class UseresController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /useres
  # GET /useres.json
  def index
    @useres = User.all
  end

  # GET /useres/1
  # GET /useres/1.json
  def show
  end

  # GET /useres/new
  def new
    @user = User.new
  end

  # GET /useres/1/edit
  def edit
  end

  # POST /useres
  # POST /useres.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /useres/1
  # PATCH/PUT /useres/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /useres/1
  # DELETE /useres/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to useres_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :last_name, :nick, :password, :phone, :identification_number, :emai)
    end
end
