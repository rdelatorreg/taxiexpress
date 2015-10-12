Rails.application.routes.draw do

  
  get 'micuenta/principal'
  get 'micuenta/mis_reservas'
  get 'micuenta/mis_direcciones'
  get 'micuenta/detalle_reserva/:id' => 'micuenta#detalle_reserva', as: :detalle_reserva
  get 'micuenta/calificar_servicio/:id' => 'micuenta#calificar_servicio', as: :calificar_servicio
  
  patch 'micuenta/calificar_servicio/:id' => 'micuenta#calificar_servicio_post', as: :calificar_servicio_post
  
  
  scope '/micuenta' do
    resources :mystreets  
  end
  
  devise_for :clients, controllers: {
     sessions: 'clients/sessions',
     registrations: 'clients/registrations'
  }


  scope '/admin' do
    resources :cars
    resources :rates
    resources :drivers

    resources :reservations
    
    get 'reservations/asigna_chofer/:id' => 'reservations#asigna_chofer', as: :asigna_chofer
    
    resources :galeries

    resources :districts
    resources :clients

    resources :carousels
    
    #marcas de vehiculos
    resources :car_brands
    resources :vehicles
    
    resources :entities do
       resources :parameters
    end
    
    delete 'muestra_mensajes/:id' => 'home#destroy'
    get 'muestra_mensajes' => 'home#contacto_show'
    
    
    
    get '/' => 'clients#index'
  end
  
  root 'home#index'
  
  get 'nosotros' => 'home#nosotros'
  get 'nuestros_servicios' => 'home#nuestros_servicios'
  get 'tarifas' => 'home#tarifas'
  get 'contacto' => 'home#contacto'
  get 'ingresar' => 'home#ingresar'
  get 'mensaje' => 'home#message'
  
  get 'mi_cuenta' => 'home#mi_cuenta'
  
  get 'workwithus/new'
  get 'workwithus/index'
  get 'workwithus/index' => 'workwithus#download', as: :download
  
  get 'reservacion' => 'home#reservacion'
  get 'reserva_confirma' => 'home#reserva_confirma'
  
  get 'mis_reservas' => 'home#mis_reservas'
  
  
  get 'nuestros_vehiculos' => 'home#nuestros_vehiculos'
  
 #POST
 
  get 'reserva_direcciones/:type' => 'home#reserva_direcciones', as: :reserva_direcciones
  post 'reserva_proceso'  => 'home#reserva_proceso'
  post 'contacto_create' => 'home#contacto_create'
  post 'workwithus_create' => 'workwithus#create'
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
       # Directs /admin/products/* to Admin::ProductsController
       # (app/controllers/admin/products_controller.rb)
    #      end
end
