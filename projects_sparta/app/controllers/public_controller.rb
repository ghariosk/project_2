class PublicController < ApplicationController


  def index

  @projects=Project.all

  
  end

  def show
  end


  def home 
  	"HOME"

  end
end
