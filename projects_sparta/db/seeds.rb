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
  p4 = Project.create!(name: "Blog Application", desc: "A web-based blog  that lets you post everything that you want to talk about games!", git: "URL", approved: true)
  p5 = Project.create!(name: "Personal Website", desc: "A personal website made with HTML, CSS and JavaScript.", git: "Url", approved: true)
  p6 = Project.create!(name: "FakeTube", desc: "A YouTube style video posting service created with HTML, CSS and JavaScript.", git: "Url", approved: true)
  p7 = Project.create!(name: "Photo Blogger", desc: "A photograph blogging web application that allows users to post pictures.", git: "Url", approved: true)
  p8 = Project.create!(name: "Princes Trust Project", desc: "An SDET project working alongside Prince's Trust", git: "Url", approved: true)
  p9 = Project.create!(name: "118 Project", desc: "A DevOps project working alongside 118", git: "Url", approved: true)



# seeds for project we had 4 different ones just for a variety 


u1 = User.create(email: "pri@mail.com", password: "password", admin: false, name: "Priyam")
u2 = User.create!(email:"lucy@mail.com", password: "password",admin: true,name: "Lucy")
u3 = User.create!(email:"jenny@mail.com", password: "password", admin: true, name: "Jenny")
u4 = User.create!(email:"niall@mail.com", password: "password", admin: true, name: "Niall")


### 2 users to test admin changes



  User.find_by(email:"pri@mail.com").update(admin: true)



  UserProject.create!(user_id: 1, project_id: p1.id )
  UserProject.create!(user_id: 2, project_id: p2.id )
  UserProject.create!(user_id: 4, project_id: p2.id )
  UserProject.create!(user_id: 1, project_id: p3.id )
  UserProject.create!(user_id: 3, project_id: p3.id )
  UserProject.create!(user_id: 2, project_id: p4.id )
  UserProject.create!(user_id: 3, project_id: p5.id )
  UserProject.create!(user_id: 4, project_id: p5.id )
  UserProject.create!(user_id: 1, project_id: p6.id )
  UserProject.create!(user_id: 2, project_id: p6.id )
  UserProject.create!(user_id: 3, project_id: p6.id )
  UserProject.create!(user_id: 2, project_id: p7.id )
  UserProject.create!(user_id: 4, project_id: p7.id )
  UserProject.create!(user_id: 1, project_id: p8.id )
  UserProject.create!(user_id: 2, project_id: p8.id )
  UserProject.create!(user_id: 3, project_id: p9.id )




  Like.create!(user_id:1, project_id:2)
  Like.create!(user_id:1, project_id:3)
  Like.create!(user_id:1, project_id:4)
  Like.create!(user_id:1 , project_id:5)
  Like.create!(user_id:1 , project_id:6)
 

  Like.create!(user_id:2, project_id:2)
  Like.create!(user_id:2, project_id:1)



  Like.create!(user_id:2, project_id:2)
  Like.create!(user_id:2 , project_id:1)
  Like.create!(user_id:2 , project_id:7)
  Like.create!(user_id:2 , project_id:8)

  Like.create!(user_id:3, project_id:1)
  Like.create!(user_id:3, project_id:2)
  Like.create!(user_id:3, project_id:3)
  Like.create!(user_id:3, project_id:4)
  Like.create!(user_id:3, project_id:5)
  Like.create!(user_id:3, project_id:6)
  Like.create!(user_id:3, project_id:9)

  Like.create!(user_id:4, project_id:2)
  Like.create!(user_id:4, project_id:1)
  Like.create!(user_id:4, project_id:7)
  Like.create!(user_id:4, project_id:8)


##### create a many to many bond for the users and the projects