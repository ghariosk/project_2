class Project < ApplicationRecord

	has_many :user_project
	has_many :users, 
	through: :user_project
  
	validates :name, :desc,:image, :git, presence: true
	validates :name, length: { minimum: 3, maximum: 100, message: "must be between 3 and 100 characters!" }

	mount_uploader :image, ImageUploader

end
