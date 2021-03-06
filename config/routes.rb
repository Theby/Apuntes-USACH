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

  get 'publicacions/new/:id' => 'publicacions#new', :as => 'new_publicacion'
  get 'publicacions/all' => 'publicacions#all_index', :as => 'all_publicacions'
  resources :publicacions, except: [:new]

  get 'entries/new/:id' => 'entries#new', :as => 'new_entry'
  resources :entries, except: [:new]

  get 'expositors/new/:id' => 'expositors#new', :as => 'new_expositor'
  resources :expositors, except: [:new]

  resources :sections

  # Permite crear una publicacion para una sección (ID) especifica
  get 'SectPub/:id' => 'sections#publicaciones', :as => 'create_publicacion'

  # Permite crear una entrada para una publicación (ID) especifica
  get 'PubEnt/:id' => 'publicacions#entries', :as => 'create_entry'

  # Permite crear un profesor para una publicación (ID) especifica
  get 'PubExp/:id' => 'publicacions#expositors', :as => 'create_expositor'

  # Ruta a la página de contacto
  get 'contacto' => 'apuntes#contacto'

  # Ruta a la página de about
  get 'about' => 'apuntes#about'

  # Ruta a la página de tutoriales
  get 'tutorial' => 'tutoriales#home'
  # Ruta al tutorial de Memcached
  get 'tutorial/memcached' => 'tutoriales#memcached', :as => 'memcached'
  # Ruta al tutorial de SCRUM
  get 'tutorial/scrum' => 'tutoriales#scrum', :as => 'scrum'
  # Ruta al tutorial de pingeso Checklist
  get 'tutorial/pingesoChecklist' => 'tutoriales#pingesoChecklist', :as => 'pingesoChecklist'

  # Ruta a los mejores apuntes
  get 'mejores_apuntes' => 'apuntes#mejores_apuntes'

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
