Nyanda::Application.routes.draw do
  get "search/result"
	devise_for :users, :controllers => {:registrations => "users/registrations"}, skip: [:sessions, :registrations]
	devise_scope :user do
		get '/in', to: 'devise/sessions#new', as: :new_user_session
		post '/in', to: 'devise/sessions#create', as: :user_session
		get '/out', to: 'devise/sessions#destroy', as: :destroy_user_session

		# users/registrations paths
		post '/joinus', to: 'users/registrations#create', as: :user_registration
		get '/joinus', to: 'users/registrations#new', as: :new_user_registration
		get '/me', to: 'users/registrations#edit', as: :edit_user_registration
		patch '/me', to: 'users/registrations#update', as: nil
		put '/me', to: 'users/registrations#update', as: nil
		delete '/me', to: 'users/registrations#destroy', as: nil
	end
#	devise_for :admin_users, ActiveAdmin::Devise.config
#	ActiveAdmin.routes(self)
	resources :search, :only => [:result, :get_result] do
    collection do
      match 'result' => 'search#result', via: [:get, :post], as: :result
    end
	end
	resources :comments, :only => [:create]
	resources :categories, :only => [:create, :destroy], :path => '/c' do
		resources :boards, :only => [:index], :path => '' do
	    resources :topics, :path => '' do
	    	get 'page/:page', :action => :index, :on => :collection
	    end
	  end
	end
	get 'vote', to: 'votings#vote_to_topic'
	get 'tags/:tag', to: 'tags#index', as: :tag
	get "home/index"
	get 'about', to: 'home#about', as: :about
	get 'sextant_mount', to: "sextant/routes#index"
	root :to => "home#index"

	get  '*not_found' => 'application#routing_error'
  post '*not_found' => 'application#routing_error'
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
