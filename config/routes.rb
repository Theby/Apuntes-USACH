Rails.application.routes.draw do


  # Ruta al home de la página
  get 'home' => 'apuntes#home'


  # Ruta a los apuntes del ramo Sistemas Distribuidos Escalables
  get 'apuntes/sde'
  get 'apuntes/sde/sde_c1' => 'apuntes#sde_c1'
  get 'apuntes/sde/sde_c2' => 'apuntes#sde_c2'
  get 'apuntes/sde/sde_c3' => 'apuntes#sde_c3'
  get 'apuntes/sde/sde_c4' => 'apuntes#sde_c4'
  # Ruta a los apuntes del ramo Interacción Humano Computador
  get 'apuntes/ihc'
  get 'apuntes/ihc/ihc_c1' => 'apuntes#ihc_c1'
  get 'apuntes/ihc/ihc_c2' => 'apuntes#ihc_c2'
  get 'apuntes/ihc/ihc_c3' => 'apuntes#ihc_c3'
  get 'apuntes/ihc/ihc_c4' => 'apuntes#ihc_c4'
  get 'apuntes/ihc/ihc_c5' => 'apuntes#ihc_c5'
  # Ruta a los apuntes del ramo Evaluación de Proyectos
  get 'apuntes/ep'
  get 'apuntes/ep/ep_c1' => 'apuntes#ep_c1'
  get 'apuntes/ep/ep_c2' => 'apuntes#ep_c2'
  get 'apuntes/ep/ep_c3' => 'apuntes#ep_c3'
  get 'apuntes/ep/ep_c4' => 'apuntes#ep_c4'
  get 'apuntes/ep/ep_c5' => 'apuntes#ep_c5'
  # Ruta a los apuntes del ramo Proyecto de Ingeniería de Software
  get 'apuntes/pingeso'
  get 'apuntes/pingeso/pingeso_c1' => 'apuntes#pingeso_c1'
  get 'apuntes/pingeso/pingeso_c2' => 'apuntes#pingeso_c2'
  get 'apuntes/pingeso/pingeso_c3' => 'apuntes#pingeso_c3'
  get 'apuntes/pingeso/pingeso_c4' => 'apuntes#pingeso_c4'
  get 'apuntes/pingeso/pingeso_c5' => 'apuntes#pingeso_c5'
  get 'apuntes/pingeso/pingeso_c6' => 'apuntes#pingeso_c6'
  # Ruta a los apuntes del ramo Comportamiento Humano en el Trabajo
  get 'apuntes/cht'
  get 'apuntes/cht/cht_c4' => 'apuntes#cht_c4'
  get 'apuntes/cht/cht_c5' => 'apuntes#cht_c5'
  get 'apuntes/cht/cht_c6' => 'apuntes#cht_c6'
  get 'apuntes/cht/cht_c7' => 'apuntes#cht_c7'


  # Charla de "Wisdom of Crowds or Wisdom of Few"
  get 'charla/charla_1' => 'apuntes#charla_1' #<== cambiar a un controlador de charlas


  # OTROS
  get 'metodologia/scrum' => 'apuntes#metodologia_1'


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
