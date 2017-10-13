# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Records have been created for seeding into the database with default values.



  p1 = Project.create!(name: "Sparta Invader", desc: "A web-game based on the classic Space Invader. Watch out, it's addictive !" , image: 'data:image/jpeg;base64,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', git: "URL", approved: true)
  p2 = Project.create!(name: "Hangman", desc: " The famous Hangman game, in a webpage !", image: 'https://static.guim.co.uk/sys-images/Guardian/Pix/pictures/2009/2/26/1235669042281/Badge-games-blog-001.jpg', git: "URL 2", approved: true)
  p3 = Project.create!(name: "Snake", desc: "The throwback Snake mobile game on the web !", image: 'https://www.coolmath-games.com/sites/cmatgame/files/snake.png', git: "URL 2", approved: true)
  p4 = Project.create!(name: "Blog", desc: "A web-based blog  that lets you post everything that you want to talk about games!", image: 'https://static.guim.co.uk/sys-images/Guardian/Pix/pictures/2009/2/26/1235669042281/Badge-games-blog-001.jpg', git: "URL", approved: true)


# seeds for project we had 4 different ones just for a variety 


  u1 = User.create(email: "pri@mail.com", password: "password", admin: false, name: "pri")
  u2 = User.create!(email:"lucy@mail.com", password: "password",admin: true,name: "lucy")


### 2 users to test admin changes



  User.find_by(email:"pri@mail.com").update(admin: true)

  UserProject.create!(user_id: 1, project_id: p1.id )
  UserProject.create!(user_id: 2, project_id: p2.id )
  UserProject.create!(user_id: 1, project_id: p3.id )
  UserProject.create!(user_id: 2, project_id: p3.id )
  UserProject.create!(user_id: 2, project_id: p4.id )
##### create a many to many bond for the users and the projects