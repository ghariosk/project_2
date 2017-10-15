class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   
    has_many :like
	has_many :liked_projects,			
     through: :like, class_name: 'Project', foreign_key: 'project_id'

      
 	has_many :user_project
     has_many :projects,			
     through: :user_project
   
 


end
