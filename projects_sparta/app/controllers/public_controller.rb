class PublicController < ApplicationController
	def index
		redirect_to root_url # routes the public/index url to home
	end
	def show
		@project=Project.find(params[:id]) # routes the show page to display a single project of id set by the page parameter
	end
	def home 
		@projects=Project.all # routes the home page to display a list of all project
	end
end
