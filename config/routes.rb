Rails.application.routes.draw do


  # Ruta al home de la página
  get 'home' => 'apuntes#home'


  # Ruta a los apuntes del ramo Sistemas Distribuidos Escalables
  get 'apuntes/sde'
  get 'apuntes/sde/sde_c1' => 'apuntes#sde_c1'
  # Ruta a los apuntes del ramo Interacción Humano Computador
  get 'apuntes/ihc'
  get 'apuntes/ihc/ihc_c1' => 'apuntes#ihc_c1'
  get 'apuntes/ihc/ihc_c2' => 'apuntes#ihc_c2'
  # Ruta a los apuntes del ramo Evaluación de Proyectos
  get 'apuntes/ep'
  get 'apuntes/ep/ep_c1' => 'apuntes#ep_c1'
  # Ruta a los apuntes del ramo Proyecto de Ingeniería de Software
  get 'apuntes/pingeso'
  get 'apuntes/pingeso/pingeso_c1' => 'apuntes#pingeso_c1'
  get 'apuntes/pingeso/pingeso_c2' => 'apuntes#pingeso_c2'

  # Roote de la página
  root 'apuntes#home'
  

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
