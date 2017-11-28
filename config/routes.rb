Rails.application.routes.draw do
	resources :payment_types
	resources :project_categories
	
	resources :projects do
	  resources :contributions
	end

	resources :user_projects
	resources :users
	resources :sessions

	root 'projects#index'
	get 'signup', to: 'users#new', as: 'signup'
  	get 'login', to: 'sessions#new', as: 'login'
  	get 'logout', to: 'sessions#destroy', as: 'logout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
