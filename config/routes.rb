Rails.application.routes.draw do
  
  get 'home/index'
  get '/' => 'home#index'
  get '/about' => 'pages#about'
  get '/terms' => 'pages#terms'

  resources :articles do
    resources :comments
  end
  
  resource :contacts, only: [:new, :create], path_names: { :new => ''} 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
