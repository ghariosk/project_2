class Project < ApplicationRecord

	has_many :user_project
	has_many :users, 
	through: :user_project
  
	validates :name, :desc, :git, presence: true
	validates :name, length: { minimum: 5, maximum: 500, message: "must be between 5 and 500 characters!" }

	mount_uploader :image, ImageUploader

end
