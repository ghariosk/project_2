class UsersController < ApplicationController



	 



  def index
  	@user=current_user

    @userproject=UserProject.where(user_id:current_user.id)

    
  end

  def show
  	@user=User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
  	
    new_user = User.create(user_params)
    new_user.save
	redirect_to new_user

  end

  	def edit
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
    params.require(:user).permit(:name,:email,)
  end

end
