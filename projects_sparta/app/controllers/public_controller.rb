class PublicController < ApplicationController


  def index

 

  
  end

  def show

  	@project=Project.find(params[:id])

  	


  end


  def home 

 @projects=Project.all

  end


  
end
