Rails.application.routes.draw do
  get 'public/index', to: 'public#index' # public/index sends request to the index function in the public controller
	get 'users/index', to: 'users#index' #  users/index sends request to the index function in the users controller 
 	resources :public # automatically routes public to the the 7 restful routes t
  	get 'home', to: 'public#home' # home sends request to the home function in the public controller
  	devise_for :users, :controllers => { registrations: 'registrations'} # sets the route of the devise user signing in and signin-up 
  	# and route the addtitional parameters of users added through migration to the registrations controller of sanitization of requests
	resources :users do # routes the 7 resful routes to the users controller
  		resources :projects # set the 7 restful routes to the projects controller and nest the project route inside the users route
  	end
	root 'public#home' # sets the root url to home
end


