Rails.application.routes.draw do

  get 'workwithus/new'
  post 'workwithus_create' => 'workwithus#create'

  get 'workwithus/index'

  devise_for :clients, controllers: {
     sessions: 'clients/sessions'
  }

 # resources :documenttypes
  resources :reservations
  
  
  scope '/admin' do
    resources :users
    resources :districts  
    
    #marcas de vehiculos
    resources :car_brands
    resources :vehicles
    
    resources :entities do
       resources :parameters
    end
    delete 'muestra_mensajes/:id' => 'home#destroy'
    get 'muestra_mensajes' => 'home#contacto_show'
    
    
    
    get '/' => 'users#index'
  end
  
  root 'home#index'
  
  get 'nosotros' => 'home#nosotros'
  get 'nuestros_servicios' => 'home#nuestros_servicios'
  get 'tarifas' => 'home#tarifas'
  get 'contacto' => 'home#contacto'
  get 'ingresar' => 'home#ingresar'
  get 'mensaje' => 'home#message'
  
  #POST
  post 'procesa_reserva' => 'home#procesa_reserva'
  post 'contacto_create' => 'home#contacto_create'
  

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
