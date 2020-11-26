# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destruction des données"
Task.destroy_all
Plant.destroy_all
User.destroy_all
PlantInformation.destroy_all
puts "données détruites"

puts "Création des plant_informations"

PlantInformation.create!(
    name: "Cocotier",
    family: "Palmiers",
    description: "Le célèbre cocotier, Cocos nucifera est un palmier de climat tropical, il appartient à la famille des Arécacées. Il est originaire des Iles du Pacifique, distribué sur de nombreuses zones côtières.",
    min_room_temperature: 10,
    max_room_temperature: 40,
    sunlight: "direct",
    difficulty: "easy",
    water: "high",
    start_month_grow: "June",
    end_month_grow: "August"
  )

PlantInformation.create!(
    name: "Cactus",
    family: "Cactacées",
    description: "Contrairement aux croyances populaires, les Cactacées ne sont pas considérés comme étant des arbres. Les cactus couvrent un large éventail de formes et de tailles.",
    min_room_temperature: 5,
    max_room_temperature: 30,
    sunlight: "indirect / direct",
    difficulty: "easy",
    water: "low",
    start_month_grow: "April",
    end_month_grow: "August"
  )

PlantInformation.create!(
    name: "Tulipe",
    family: "Liliacées",
    description: "Le genre Tulipa comprend une centaine d’espèces distribuées en Europe, de l’Asie occidentale à l’Asie centrale et en Afrique du Nord. ",
    min_room_temperature: 15,
    max_room_temperature: 25,
    sunlight: "indirect / direct",
    difficulty: "normal",
    water: "moderate",
    start_month_grow: "July",
    end_month_grow: "October"
  )

PlantInformation.create!(
    name: "Monstera",
    family: "Aracées",
    description: "Merveilleuse plante d’intérieur, le monstera est l’une des plantes d’intérieur les plus vendues mais aussi l’une des plus résistantes et donc facile à cultiver.",
    min_room_temperature: 10,
    max_room_temperature: 25,
    sunlight: "indirect",
    difficulty: "easy",
    water: "moderate",
    start_month_grow: "October",
    end_month_grow: "April"
  )

PlantInformation.create!(
    name: "Strawberry",
    family: "Mara des bois",
    description: "La ‘Mara des bois’ offre des petits fruits ((10g) précoces, coniques, rouge foncé et brillant.",
    min_room_temperature: 10,
    max_room_temperature: 25,
    sunlight: "indirect",
    difficulty: "easy",
    water: "moderate",
    start_month_grow: "April",
    end_month_grow: "June"
  )

puts "plant_informations crées"

puts "création des utilisateurs"

user1 = User.create!(
  first_name: "Vio",
  address: "Chartrons",
  score: 0,
  email: "vio@gmail.com",
  password: "abcdef")

user2 = User.create!(
  first_name: "Mael",
  address: "Loin du Wagon",
  score: 0,
  email: "mael@gmail.com",
  password: "abcdef")

user3 = User.create!(
  first_name: "Hugo",
  address: "Sainte-Catherine",
  score: 0,
  email: "hugo@gmail.com",
  password: "abcdef")

puts "users crées"

puts "Assignations de plantes à nos users"

Plant.create!(nickname: "Boby", like_number: 0, user: user1, plant_information: PlantInformation.all.sample)
Plant.create!(nickname: "Zeubi", like_number: 0, user: user1, plant_information: PlantInformation.find_by(name: "Monstera"))
Plant.create!(nickname: "Mimi", like_number: 0, user: user2, plant_information: PlantInformation.all.sample)
Plant.create!(nickname: "Fifi", like_number: 0, user: user2, plant_information: PlantInformation.all.sample)
Plant.create!(nickname: "Loulou", like_number: 0, user: user2, plant_information: PlantInformation.all.sample)
Plant.create!(nickname: "Salamèche", like_number: 0, user: user3, plant_information: PlantInformation.all.sample)
Plant.create!(nickname: "Bulbizarre", like_number: 0, user: user3, plant_information: PlantInformation.find_by(name: "Monstera"))
Plant.create!(nickname: "Carapuce", like_number: 0, user: user3, plant_information: PlantInformation.all.sample)

puts "assignation terminé"

puts "création des taches"

PlantInformation.all.each do |plant_information|
  Task.create!(name: "Arroser abondamment", score: 10, intervalle: rand(1..4), plant_information: plant_information)
  Task.create!(name: "Arracher les mauvaises herbes", score: 8, intervalle: rand(1..4), plant_information: plant_information)
  Task.create!(name: "Chanter une berceuse", score: 5, intervalle: rand(1..4), plant_information: plant_information)
end

puts "taches créées"




