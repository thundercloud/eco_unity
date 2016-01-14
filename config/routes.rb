Rails.application.routes.draw do
  
  devise_for :users
  resources :orders, except: [:edit, :update, :destoy, :index, :show]
  
  authenticate :user do
    get '/dashboard', to: 'pages#dashboard'
    resources :tags, only: [:new, :create, :edit, :update, :destroy, :show, :index]
    resources :articles, only: [:new, :create, :edit, :update, :destroy, :show, :index]
    resources :orders, only: [:index]
  end

  get '/contacts', to: 'pages#contacts'
  get '/library', to: 'pages#library'
  get '/order', to: 'pages#order'
  post '/confirmation', to: 'orders#confirmation'

  root :to => 'pages#home'

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
