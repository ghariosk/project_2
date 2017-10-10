# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





  p1 = Project.create!(name: "Sparta Invader", desc: "A web-game based on the classic Space Invader. Watch out, it's addictive ! " , image: 'url', git: "URL", approved: true)

  p2= Project.create!(name: "Hangman", desc: " The famous Hangman game, in a webpage !", image: 'url' , git:"URL 2" , approved: true)





  UserProject.create!(user_id: 1, project_id: p1.id )

  UserProject.create!(user_id: 2, project_id: p1.id )

  UserProject.create!(user_id: 2, project_id: p2.id)









