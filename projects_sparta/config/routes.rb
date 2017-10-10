Rails.application.routes.draw do
 
  get 'public/index', to: 'public#index'

  get 'public/show'

devise_for :users
  resources :users do 
  	resources :projects
  end



 resources :projects 



 root "public#index"

 

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
 