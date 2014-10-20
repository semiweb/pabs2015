Pabs2015::Application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'pages#home'
  devise_for :users, path: "/", path_names: {sign_in: 'login', sign_up: '', registration: 'register', sign_out: 'logout'}

  get 'congress' => 'pages#congress'
  get 'pabs_president' => 'pages#pabs_president'
  get 'organizing_committee' => 'pages#organizing_committee'
  get 'scientific_committee' => 'pages#scientific_committee'
  get 'steering_committee' => 'pages#steering_committee'
  get 'history' => 'pages#history'
  get 'view_the_program' => 'pages#view_the_program'
  get 'visitor_information' => 'pages#visitor_information'
  get 'more_news' => 'pages#more_news'

  resources :abstracts
  resources :addresses

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

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
