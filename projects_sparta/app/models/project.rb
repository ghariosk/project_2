class Project < ApplicationRecord

	mount_uploader :image, ImageUploader

	

	has_many :like
	has_many :likers, 
	through: :like, class_name: "User", foreign_key: "user_id"

	has_many :user_project
	has_many :users, 
	through: :user_project
	
	

end
