class ProjectsController < ApplicationController
  def index
    @user=User.all.find(params[:user_id]) # sets the index page of the projects to yield a list of all the projects assigned to the user's id
    @like=Like.new
    @projects=@user.projects
    end
  

  def show
    @user=User.all.find(params[:user_id]) # sets the show page of the projects to display the project associated to the user and id
    @project= @user.projects.find(params[:id])
    @like=Like.new
  end

  def new
    @user=User.all.find(params[:user_id]) # create a new database entry for a project and of USerProject, linking the user to the project
    @project=Project.new
    @userproject=UserProject.new
    
  end

  def create
    @user=User.all.find(params[:user_id]) # hydrate the data into the newly created databse of project and userproject
     @project = Project.create(project_params)
    @userproject = UserProject.create(project_id: @project.id, user_id:@user.id)
    if @project.save
      redirect_to home_path
    else
      render :new
    end
    
  end

  def edit
    @user=User.all.find(params[:user_id]) # extract the data from the user and project database to edit
    @project=@user.projects.find(params[:id])
  end


  def update
    @user=User.all.find(params[:user_id]) #  update the database with the new entries
    update=@user.projects.find(params[:id]).update(project_params)

    redirect_to user_projects_path
  end

  def destroy
    @user=User.all.find(params[:user_id]) # deletes the database entry associated with the :id
    Project.destroy(params[:id])
    redirect_to user_projects_path
  end
  def new_collab 
    @collab=UserProject.new
  end

  def create_collab
    @collab=UserProject.all.where(user_id:userproject_params[:user_id],project_id:userproject_params[:project_id]).first_or_create(userproject_params) 
    @collab.save
    redirect_to user_projects_path
  end
  def new_like
    @like=Like.new
  end
  def create_like
    @liker=current_user
    @like=Like.all.where(user_id:current_user.id,project_id:like_params[:project_id])
    if @like.blank? 
    @like.create(like_params)
    new_like.save
    else
    Like.destroy(@like.first.id)
    end
    redirect_to root_url
    end

  protected

  def project_params
    params.require(:project).permit(:id, :name, :desc, :image, :git, :approved,:search) # permits the exchanges of data between the controller 
                                                                                # and the database
  end

  def user_params
    params.require(:user).permit(:name)
  end

  def userproject_params
    params.require(:user_project).permit(:user_id, :project_id)
  end

  def like_params
    params.require(:like).permit(:user_id, :project_id)
  end
end
