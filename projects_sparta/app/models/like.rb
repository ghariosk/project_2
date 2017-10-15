class Like < ApplicationRecord
	belongs_to :liked_project, class_name: "Project", foreign_key: "project_id"
	belongs_to :liker, class_name: "User", foreign_key: "user_id"
end
