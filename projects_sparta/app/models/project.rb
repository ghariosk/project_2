class Project < ApplicationRecord

	has_many :user_project
	has_many :users, 
	through: :user_project
  
	validates :name, :desc,:image, :git, presence: true
	validates :name, length: { minimum: 3, maximum: 100, message: "who thefuck has a name thats that short/long, are you fuck bro? Is your momma fucked bro cos she named you that shit" }

	mount_uploader :image, ImageUploader

end
