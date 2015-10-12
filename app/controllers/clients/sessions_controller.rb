class Clients::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]

  add_breadcrumb "Inicio", :root_path
  # GET /resource/sign_in
   def new
     add_breadcrumb "Login", :new_client_session_path
     super
   end

  # POST /resource/sign_in
   def create
     super
   end

  # DELETE /resource/sign_out
   def destroy
     super
   end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end
