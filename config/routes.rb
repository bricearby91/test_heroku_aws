Rails.application.routes.draw do
  get 'products/show'
  get 'products/index'
  get 'pictures/create'
  get 'pictures/new'
  get 'products/new'
  get 'products/create'
	resources :products, only: [:show] do
		resources :pictures, only: [:create]
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users

  root 'products#index' 
end
