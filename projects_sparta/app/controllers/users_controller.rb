class UsersController < ApplicationController

	  before_action :authenticate_user!

  def index

  	"Home page"
  	
  end

  def show

  	"Bookmarks"
  	
  end
end
