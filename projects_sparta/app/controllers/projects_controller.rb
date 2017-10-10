class ProjectsController < ApplicationController

 
  def index
      @projects=Project.all


  end

  def show

    @user=current_user
   
    @project= Project.all.find(params[:id])


  end

  def new

    @user=current_user

    @project=Project.new

    @userproject=UserProject.new


  end

  def create
      @user=current_user

      new_project=Project.create(project_params)

      new_project.save

      new_user_project=UserProject.create(project_id: new_project.id, user_id:current_user.id)

      @new_user_project_2=UserProject.new

      @new_user_project_2.project_id=new_project.id
      @new_user_project_2.user_id=params[:user_id]

      @new_user_project_2.save



     



      


      redirect_to user_projects_path
  end

  def edit

    @user=current_user
    @project=@user.projects.find(params[:id])

    @userproject=UserProject.find_by(project_id:params[:id])

  end

  def update

    @user=current_user
    update=@user.projects.find(params[:id]).update(project_params)

    redirect_to user_projects_path


  end

  def destroy

    @user=current_user 

    @numb
    Project.destroy(params[:id])

    redirect_to user_projects_path
  end

  protected

  def project_params
    params.require(:project).permit(:id, :name, :desc, :image, :git, :approved)
  end



end
