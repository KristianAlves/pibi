Rails.application.routes.draw do

  namespace :backoffice do
    get 'categories/index'
    get 'subcategories/index'
    get 'products/index'
    get 'brands/index'
    get 'members/index'
    get 'consumers/index'
    get 'banners/index'
    get 'logos/index'
    get 'abouts/index'
    get 'dashboard', to: 'dashboard#index'
    resources :categories, except: [:show]
    resources :subcategories, except: [:show]
    resources :products, except: [:show]
    resources :brands, except: [:show]
    resources :banners, except: [:show]
    resources :logos, except: [:show]
    resources :abouts, except: [:show]
  end

  get 'admin', to: 'backoffice/dashboard#index'

  devise_for :admins, :skip => [:registrations]
  devise_for :members, controllers: { registrations: 'members/registrations'}
  devise_for :consumers, controllers: { registrations: 'consumers/registrations'}

  namespace :site do
    get 'home/index'
    get 'about/index'
    get 'search', to: 'search#products'
    resources :send_mail, only: [:new, :create]
    resources :product_detail, only: [:show]
    resources :abouts, only: [:show]
    resources :categories, only: [:show]
    resources :cart, except: [:show]
    resources :cart_consumer, except: [:show]

    namespace :profile do
      namespace :legal do
        resources :dashboard, only: [:index]
        resources :my_data, only: [:edit, :update]
      end
      namespace :physical do
        resources :dashboard, only: [:index]
        resources :my_data, only: [:edit, :update]
      end
    end
  end

  root 'site/home#index'

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
