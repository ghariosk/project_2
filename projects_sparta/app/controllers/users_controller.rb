class UsersController < ApplicationController
  def index
    @users = current_user.users
  end

  def show
    @user = current_user.users.(params[:id])
  end

  def new
    @user = current_user.users.new
  end

  def create
    new_user = current_user.users.create(user_params)
    new_user.save
    redirect_to new_user
  end

  def edit
    @user = current_user.users.find(params[:id])
  end

  def update
    user = current_user.users.find(params[:id])
    current_user.users.update(user_params)
    redirect_to user
  end

  def destroy
    current_user.users.destroy(params[:id])
  end

  protected
  def user_params
    # params.require(:user).permit(variables of user such as :name, :email, etc)
  end
end
