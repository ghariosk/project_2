Rails.application.routes.draw do


  get 'public/index', to: 'public#index'


	 get 'users/index', to: 'users#index'
 
  resources :public
  
 
  


 get 'home', to: 'public#home'

devise_for :users, :controllers => { registrations: 'registrations'}


  resources :users do 
  	resources :projects
  end


 root 'public#home' 


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
