class ProjectsController < ApplicationController
  def index
    @user = current_user.users.find(params[:user_id])
    @projects = @user.projects
  end

  def show
    @user = current_user.users.find(params[:user_id])
    @project = @user.projects.find(params[:id])
  end

  def new
    @user = current_user.users.find(params[:user_id])
    @project = project.new
  end

  def create
    @user = current_user.users.find(params[:user_id])
    user.projects.create(project_params)
    redirect_to user
  end

  def edit
    @user = current_user.users.find(params[:user_id])
    @project = @user.projects.find(params[:id])
  end

  def update
    @user = current_user.users.find(params[:user_id])
    project = user.projects.find(params[:id])
    project.update(project_params)
    redirect_to user
  end

  def destroy
    @user = current_user.users.find(params[:user_id])
    project = user.projects.find(params[:id])
    project.destroy
    redirect_to user
  end

  protected
  def project_params
    # params.require(:project).permit(variables of project such as :name, :language, etc)
  end
end
