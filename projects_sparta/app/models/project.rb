class Project < ApplicationRecord
	mount_uploader :image, ImageUploader
	def self.search(search)
		where("name ILIKE ?", "%#{search}%")
	end
	has_many :like
	has_many :likers, 
	through: :like, class_name: "User", foreign_key: "user_id"
	has_many :user_project
	has_many :users, 
	through: :user_project

	validates :name, :desc, :git, presence: true
	validates :name, length: { minimum: 3, maximum: 100, message: "must be between 3 and 100 characters!" }


end
