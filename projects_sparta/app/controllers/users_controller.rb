class UsersController < ApplicationController



	  before_action :authenticate_user!



  def index
  	@users=Project.all
  end

  def show
  	@user=current_user.find(params[:id])
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
