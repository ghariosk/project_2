class UsersController < ApplicationController



	 



  def index

    if current_user.admin == true

    @user=User.all



    else 

  	@user=current_user

    @userproject=UserProject.where(user_id:current_user.id)


    end

                                                                                                                         
  end

  def show
  	@user=User.find(params[:id])
  end



  def edit
    if current_user.admin == true
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
    params.require(:user).permit(:admin)
  end

end
