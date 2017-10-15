Rails.application.routes.draw do

  get 'public/index', to: 'public#index' # public/index sends request to the index function in the public controller
	get 'users/index', to: 'users#index' #  users/index sends request to the index function in the users controller
	post 'public/create_filter', to: 'public#create_filter' 
	get 'public/new_filter', to: 'public#new_filter'
	get 'public/show_filter', to: 'public#show_filter'

 	resources :public # automatically routes public to the the 7 restful routes t
  	get 'home', to: 'public#home' # home sends request to the home function in the public controller
  	devise_for :users, :controllers => { registrations: 'registrations'} # sets the route of the devise user signing in and signin-up 
  	# and route the addtitional parameters of users added through migration to the registrations controller of sanitization of requests
	resources :users do
	get 'projects/new_collab', to: 'projects#new_collab' # routes the 7 resful routes to the users controller
	post 'projects/create_collab', to: 'projects#create_collab'
		get 'projects/new_like', to: 'projects#new_like'
		post 'projects/create_like', to: 'projects#create_like'
  		resources :projects # set the 7 restful routes to the projects controller and nest the project route inside the users route
  	end
	root 'public#home' # sets the root url to home


	

end


