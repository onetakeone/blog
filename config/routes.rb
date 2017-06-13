Rails.application.routes.draw do
  get 'home/index'

  get '/' => 'home#index'

  get 'contacts' => 'contacts#new'

  resources :articles

  # resource :contacts, only: [:new, :create]
  resource :contacts, only: [:new, :create], path_names: { :new => ''}

  resources :quotes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
