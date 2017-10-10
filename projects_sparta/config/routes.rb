Rails.application.routes.draw do
<<<<<<< HEAD
  get 'projects_controller/index'

  get 'projects_controller/show'

  get 'projects_controller/new'

  get 'projects_controller/create'

  get 'projects_controller/edit'

  get 'projects_controller/update'

  get 'projects_controller/destroy'

  get 'users_controller/index'

  get 'users_controller/show'

  get 'users_controller/new'

  get 'users_controller/create'

  get 'users_controller/edit'

  get 'users_controller/update'

  get 'users_controller/destroy'

=======
 
devise_for :users



  resources :users do 

  	resources :projects
  end

  
>>>>>>> 9e3c99be54317b1cba120471ab1dd973f127f80c
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html





 



end
 