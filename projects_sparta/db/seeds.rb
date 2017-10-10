# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Records have been created for seeding into the database with default values.


  p1 = Project.create!(name: "Sparta Invader", desc: "A web-game based on the classic Space Invader. Watch out, it's addictive !" , image: 'url', git: "URL", approved: true)
  p2 = Project.create!(name: "Hangman", desc: " The famous Hangman game, in a webpage !", image: 'url', git: "URL 2", approved: true)
  p3 = Project.create!(name: "Snake", desc: "The throwback Snake mobile game on the web !", image: 'url', git: "URL 2", approved: true)
  p4 = Project.create!(name: "Blog", desc: "A web-based blog application that lets you post everything that you want to talk about !", image: 'url', git: "URL", approved: true)


  u1 = User.create!(email: "pri-8@hotmail.co.uk", password: "beloved")



  UserProject.create!(user_id: u1.id, project_id: p1.id )
  UserProject.create!(user_id: u1.id, project_id: p2.id )
  UserProject.create!(user_id: u1.id, project_id: p3.id )
  UserProject.create!(user_id: u1.id, project_id: p4.id )
