Rails.application.routes.draw do
  
  get 'home/index'
  get '/' => 'home#index'

  resources :articles do
    resources :comments
  end
  
  resource :contacts, only: [:new, :create], path_names: { :new => ''} 
  resource :terms
  resource :about 
  resources :quotes



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# only: [:new, :create, :show], path_names: { :new => ''} 
# get 'contacts' => 'contacts#new'