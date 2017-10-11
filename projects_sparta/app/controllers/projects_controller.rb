class ProjectsController < ApplicationController
 
  def index

      @user=current_user


     

        @projects=current_user.projects


        
         


   



  end

  def show

    @user=current_user
   
    @project= current_user.projects.find(params[:id])
    
  end

  def new

    @user=current_user

    @project=Project.new

    @userproject=UserProject.new


    @collab=UserProject.new

  end

  def create

      @user=current_user

      new_project=Project.create(project_params)

      new_project.save

      @userproject=UserProject.create(project_id: new_project.id, user_id:current_user.id)

      @userproject.save

      @collaborator=UserProject.create!(project_id:new_project.id, user_id:params[:user_id])

      @collaborator.save

      redirect_to user_projects_path
  end

  def edit

    @user=current_user
    @project=@user.projects.find(params[:id])
    @userproject_first=UserProject.all.where(project_id:params[:id])
    @userproject_first.each_with_index do |element,index|

      if @userproject_first[index].user_id != current_user.id 
        @userproject=@userproject_first[index].user_id
        @user_2=User.find(@userproject)
        @userproject.user_id=@userproject_first[index].user_id
      end
    end   
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

  def user_params
    params.require(:user).permit(:name)

  end

end
