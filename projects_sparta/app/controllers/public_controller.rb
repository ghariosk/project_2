class PublicController < ApplicationController


  def index

 

  
  end

  def show
  end


  def home 

 @projects=Project.all

  end


  
end
