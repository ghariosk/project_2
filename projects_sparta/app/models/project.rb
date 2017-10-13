class Project < ApplicationRecord

	

	has_many :user_project
	has_many :users, 
	through: :user_project

	mount_uploader :image, ImageUploader
end
