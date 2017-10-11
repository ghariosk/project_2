class PublicController < ApplicationController


  def index

  	redirect_to root_url



 

  
  end

  def show

	@project=Project.find(params[:id])

  end


  def home 

 @projects=Project.all

  end


  
end
