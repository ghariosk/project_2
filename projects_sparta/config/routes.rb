Rails.application.routes.draw do

# Public controller route is attached to the index route.
get 'public/index', to: 'public#index'

# Users route is attached to index route.
get 'users/index', to: 'users#index'
 
# Resources is set to the public controller.
resources :public
  
# The home route is set to public.
get 'home', to: 'public#home'

# Users and controllers is nested to registration.
devise_for :users, :controllers => { registrations: 'registrations'}

# Resources is set to users and projects.
resources :users do 
	resources :projects
end

# The default root is public/home.
root 'public#home' 

end
