class Project < ApplicationRecord


	mount_uploader :image, ImageUploader

	

	has_many :like
	has_many :likers, 
	through: :like, class_name: "User", foreign_key: "user_id"

	has_many :user_project
	has_many :users, 
	through: :user_project
  
	validates :name, :desc,:image, :git, presence: true
	validates :name, length: { minimum: 3, maximum: 100, message: "who the.fuck has a name thats that short/long, are you fuck bro? Is your momma fucked bro cos she named you that shit" }

end
