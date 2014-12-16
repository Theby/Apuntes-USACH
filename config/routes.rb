Rails.application.routes.draw do

  # Roote de la página
  root 'apuntes#home'

  # Ruta al home de la página
  get 'home' => 'apuntes#home'

  # Ruta a la vista de administración
  get 'admin' => 'admin#index'

  # Ruta a la vista generica de Apuntes
  get 'apuntes/:id' => 'apuntes#show', :as => 'apunte'
  get 'publicacion/:id' => 'apuntes#index', :as => 'apunte_index'

  # Evita que se puedan crear usuarios, pero permite editar los datos de un usuario
  devise_for :users, :skip => [:registrations]
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    get 'users' => 'devise/registrations#update', :as => 'user_registration'
  end

  resources :entries
  resources :expositors
  resources :publicacions
  resources :sections

  # Ruta a la página de contacto
  get 'contacto' => 'apuntes#contacto' 

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
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
