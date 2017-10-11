class ProjectsController < ApplicationController
  def index
    @user=User.all.find(params[:user_id])
    @projects=@user.projects
  end

  def show
    @user=User.all.find(params[:user_id])
    @project= @user.projects.find(params[:id])
  end

  def new
    @user=@user=User.all.find(params[:user_id])
    @project=Project.new
    @userproject=UserProject.new
  end

  def create
    @user=User.all.find(params[:user_id])
    new_project=Project.create(project_params)
    @userproject=UserProject.create(project_id: new_project.id, user_id:@user.id)
    @userproject.save
    redirect_to user_projects_path
  end

  def edit
    @user=User.all.find(params[:user_id])
    @project=@user.projects.find(params[:id])
  end


  def update
    @user=User.all.find(params[:user_id])
    update=@user.projects.find(params[:id]).update(project_params)  
    redirect_to user_projects_path
  end

  def destroy
    @user=User.all.find(params[:user_id])
    Project.destroy(params[:id])
    redirect_to user_projects_path
  end

  protected

  def project_params
    params.require(:project).permit(:id, :name, :desc, :image, :git, :approved)
  end

  def user_params
    params.require(:user).permit(:name)
  end
end
