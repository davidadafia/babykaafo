Rails.application.routes.draw do
  get 'ainfos/index'

  get 'ainfos/show'

  get 'dinfos/index'

  get 'dinfos/show'

  get 'binfos/index'

  get 'binfos/show'

  get 'avideos/index'

  get 'avideos/show'

  get 'dvideos/index'

  get 'dvideos/show'

  get 'bvideos/index'

  get 'bvideos/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'apblogs/index'

  get 'apblogs/show'

  get 'dpblogs/index'

  get 'dpblogs/show'

  get 'bpblogs/index'

  get 'bpblogs/show'

  get 'project/index'

  get 'project/show'

  get 'shop/index'

  get 'shop/show'

  get 'consult/index'

  get 'consult/show'

  get 'about/index'

  get 'contact/index'

  get 'services/index'
  get 'services/b1'
  get 'services/b2'
  get 'services/b3'
  get 'services/d1'
  get 'services/d2'
  get 'services/d3'
  get 'services/a1'
  get 'services/a2'
  get 'services/a3'
  get 'homes/index'


  mount Commontator::Engine => '/commontator'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'homes#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  resources :bpblogs
  resources :dpblogs
  resources :apblogs
  resources :bvideos
  resources :dvideos
  resources :avideos

  resources :bpblogs do
    resources :title, :id, :body, :blopic, :writer
  end
  resources :dpblogs do
    resources :title, :id, :body, :blopic, :writer
  end
  resources :apblogs do
    resources :title, :id, :body, :blopic, :writer
  end
  resources :bvideos do
    resources :tltle, :body
  end
  resources :dvideos do
    resources :tltle, :body
  end
  resources :avideos do
    resources :tltle, :body
  end
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
