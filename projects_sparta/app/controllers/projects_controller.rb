class ProjectsController < ApplicationController

 
  def index
      @projects=Project.all
  end

  def show

    @user=current_user
   
    @project= current_user.projects.find(params[:id])
  end

  def new

    @user=current_user

    @project=Project.new


  end

  def create
      @user=current_user
      new_project=Project.create(project_params)
      new_project.save


      redirect_to user_projects_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  protected

  def project_params
    params.require(:project).permit(:id, :name, :desc, :image, :git, :approved)
  end


end
