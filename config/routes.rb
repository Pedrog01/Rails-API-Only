Rails.application.routes.draw do
  resources :kinds

  resources :contacts do 
    resource :kind, only: [:show]
    resource :kind, only: [:show], path:'ralationships/kind'

    resource :phones, only: [:show]
    resource :phones, only: [:show], path:'ralationships/kind'

    resource :address, only: [:show, :update, :create, :destroy]
    resource :address, only: [:show, :update, :create, :destroy], path:'ralationships/kind'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
