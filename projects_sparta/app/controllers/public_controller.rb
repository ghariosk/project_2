class PublicController < ApplicationController
	def index
		redirect_to root_url # routes the public/index url to home
	end
	def show
		@projects=Project.all
		@project=Project.find(params[:id]) # routes the show page to display a single project of id set by the page parameter
		@like=Like.new
		if @project.approved == false
			redirect_to root_url
		end
	end
	def home 
		@projects=Project.all # routes the home page to display a list of all project
		@like=Like.new
		@filter=Project.new
	end
	def show_filter
		@project=User.find_by(name: 'Lucy').projects
		@like=Like.new
	end
	def project_params
    params.require(:project).permit(:id, :name, :desc, :image, :git, :approved) # permits the exchanges of data between the controller 
                                                                                # and the database
  	end
end
