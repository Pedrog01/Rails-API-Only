Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :kinds

  scope module: 'v1' do
  resources :contacts, :constraints => lambda {|request|} request.params[:version] == "1" do 
    resource :kind, only: [:show]
    resource :kind, only: [:show], path:'ralationships/kind'

    resource :phones, only: [:show]
    resource :phones, only: [:show], path:'ralationships/kind'
    
    resource :phone, only: [:update, :create, :destroy]
    resource :phone, only: [:update, :create, :destroy], path: 'relationships/phones'

    resource :address, only: [:show, :update, :create, :destroy]
    resource :address, only: [:show, :update, :create, :destroy], path:'ralationships/kind'
  end
end

scope module: 'v2' do
  resources :contacts, :constraints => lambda {|request|} request.params[:version] == "1" do 
    resource :kind, only: [:show]
    resource :kind, only: [:show], path:'ralationships/kind'

    resource :phones, only: [:show]
    resource :phones, only: [:show], path:'ralationships/kind'
    
    resource :phone, only: [:update, :create, :destroy]
    resource :phone, only: [:update, :create, :destroy], path: 'relationships/phones'

    resource :address, only: [:show, :update, :create, :destroy]
    resource :address, only: [:show, :update, :create, :destroy], path:'ralationships/kind'
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
