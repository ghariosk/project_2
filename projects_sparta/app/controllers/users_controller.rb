class UsersController < ApplicationController



	 



  def index
  	@user=current_user

    @userproject=UserProject.where(user_id:current_user.id)

  end

  def show
  	@user=User.find(params[:id])
  end


  def edit
    if 
    @user = User.find(params[:id])
	end

  def update

    user = User.find(params[:id])
    user.update(user_params)

    redirect_to user
  end

  def destroy
    User.destroy(params[:id])
    redirect_to users_url
  end

  protected
  def user_params
    params.require(:user).permit(:admin)
  end

end
