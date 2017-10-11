class UsersController < ApplicationController

   before_action :authenticate_user!


 if user_signed_in?
	 



  def index

    if current_user.admin == true

    @users=User.all



    @users.each do |element| 

      @task=element
      
    end


    

  

   



    else 

  	@user=current_user

    @userproject=UserProject.where(user_id:current_user.id)

    redirect_to root_url


    end

                                    
  end

  def show
  	@user=User.find(params[:id])
  end



  def edit
    if 
    @user = User.find(params[:id])
    end

	end

  def update

    user = User.find(params[:id])

    user.update(user_params)

    redirect_to users_index_url

  end

  def destroy
    User.destroy(params[:id])
    redirect_to users_url
  end

  protected
  def user_params
    params.require(:user).permit(:admin, :id, :name)
  end

end

end
