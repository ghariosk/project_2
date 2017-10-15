# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Records have been created for seeding into the database with default values.



  p1 = Project.create!(name: "Sparta Invader", desc: "A web-game based on the classic Space Invader. Watch out, it's addictive !", git: "URL", approved: true)
  p2 = Project.create!(name: "Hangman", desc: " The famous Hangman game, in a webpage !", git: "URL 2", approved: true)
  p3 = Project.create!(name: "Snake", desc: "The throwback Snake mobile game on the web !", git: "URL 2", approved: true)
  p4 = Project.create!(name: "Blog", desc: "A web-based blog  that lets you post everything that you want to talk about games!", git: "URL", approved: true)


# seeds for project we had 4 different ones just for a variety 


u1 = User.create(email: "pri@mail.com", password: "password", admin: false, name: "Priyam")
u2 = User.create!(email:"lucy@mail.com", password: "password",admin: true,name: "Lucy")


### 2 users to test admin changes



  User.find_by(email:"pri@mail.com").update(admin: true)

  UserProject.create!(user_id: 1, project_id: p1.id )
  UserProject.create!(user_id: 2, project_id: p2.id )
  UserProject.create!(user_id: 1, project_id: p3.id )
  UserProject.create!(user_id: 2, project_id: p3.id )
  UserProject.create!(user_id: 2, project_id: p4.id )



  Like.create!(user_id:1, project_id: 2)
  Like.create!(user_id:1, project_id:3)
  Like.create!(user_id:1, project_id:4)

  Like.create!(user_id:2, project_id:2)
  Like.create!(user_id:2 , project_id:1)


##### create a many to many bond for the users and the projects