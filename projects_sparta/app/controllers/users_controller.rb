class UsersController < ApplicationController
  # limits the accessibility to signed in users only
    before_action :authenticate_user!
    def index
      if current_user.admin == true # show a list of all users registered if the current user is an admin
        @users=User.all 
        @users.each do |element| 
         @task=element
        end
      else 
        @user=current_user # or else sho a list of the user's personal page . not very relevant here as current_user required
        @userproject=UserProject.where(user_id: current_user.id)
        redirect_to root_url
      end
    end
    def show # will display the personal page of one user determined by the :id
    	@user=User.find(params[:id])
    end
    def edit # permits the update of the extra paramets of the user
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
