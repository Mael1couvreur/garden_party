# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "destruction des données"
Activity.destroy_all
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
    sunlight: "Direct",
    difficulty: "Facile",
    water: "Besoin élevé",
    start_growth_month: "Juin",
    end_growth_month: "Aout",
  )

PlantInformation.create!(
    name: "Cactus",
    family: "Cactacées",
    description: "Contrairement aux croyances populaires, les Cactacées ne sont pas considérés comme étant des arbres. Les cactus couvrent un large éventail de formes et de tailles.",
    min_room_temperature: 5,
    max_room_temperature: 30,
    sunlight: "Indirect / Direct",
    difficulty: "Facile",
    water: "Besoin faible",
    start_growth_month: "Avril",
    end_growth_month: "Août"
  )

PlantInformation.create!(
    name: "Tulipe",
    family: "Liliacées",
    description: "Le genre Tulipa comprend une centaine d’espèces distribuées en Europe, de l’Asie occidentale à l’Asie centrale et en Afrique du Nord. ",
    min_room_temperature: 15,
    max_room_temperature: 25,
    sunlight: "Indirect / Direct",
    difficulty: "Normal",
    water: "Besoin modéré",
    start_growth_month: "Juillet",
    end_growth_month: "Octobre"
  )

PlantInformation.create!(
    name: "Monstera",
    family: "Aracées",
    description: "Merveilleuse plante d’intérieur, le monstera est l’une des plantes d’intérieur les plus vendues mais aussi l’une des plus résistantes et donc facile à cultiver.",
    min_room_temperature: 10,
    max_room_temperature: 25,
    sunlight: "Indirect",
    difficulty: "Facile",
    water: "Besoin modéré",
    start_growth_month: "Octobre",
    end_growth_month: "Avril"
  )

PlantInformation.create!(
    name: "Strawberry",
    family: "Mara des bois",
    description: "La ‘Mara des bois’ offre des petits fruits ((10g) précoces, coniques, rouge foncé et brillant.",
    min_room_temperature: 10,
    max_room_temperature: 25,
    sunlight: "Indirect",
    difficulty: "Facile",
    water: "Besoin modéré",
    start_growth_month: "Avril",
    end_growth_month: "Juin"
  )

puts "plant_informations crées"

puts "création des utilisateurs"

user1 = User.create!(
  first_name: "Vio",
  address: "Chartrons",
  score: 0,
  email: "vio@gmail.com",
  password: "abcdef")
file = URI.open('https://avatars1.githubusercontent.com/u/70322815?v=4')
user1.photo.attach(io: file, filename: 'user1.jpg', content_type: 'image/jpeg')

user2 = User.create!(
  first_name: "Mael",
  address: "Loin du Wagon",
  score: 0,
  email: "mael@gmail.com",
  password: "abcdef")
file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1601908758/rtos8nfz2zacii2dndkc.jpg')
user2.photo.attach(io: file, filename: 'user2.jpg', content_type: 'image/jpeg')

user3 = User.create!(
  first_name: "Hugo",
  address: "Sainte-Catherine",
  score: 0,
  email: "hugo@gmail.com",
  password: "abcdef")
file = URI.open('https://avatars0.githubusercontent.com/u/69712961?v=4')
user3.photo.attach(io: file, filename: 'user3.jpg', content_type: 'image/jpeg')

puts "users crées"

puts "Assignations de plantes à nos users"

plant1 =Plant.create!(nickname: "Boby", user: User.find(1), plant_information: PlantInformation.find_by(name: "Cocotier"), age_in_days: 114, like_number: rand(1..50))
file = URI.open('https://images34.fotosik.pl/417/009ea66551ab1d82.jpg')
plant1.photo.attach(io: file, filename: 'plant1.jpg', content_type: 'image/jpeg')


plant2 = Plant.create!(nickname: "Zeubi", user: User.find(1), plant_information: PlantInformation.find_by(name: "Monstera"), age_in_days: 66, like_number: rand(1..50))
file = URI.open('https://images-na.ssl-images-amazon.com/images/I/51XyAZ3wJ8L._AC_SL1000_.jpg')
plant2.photo.attach(io: file, filename: 'plant2.jpg', content_type: 'image/jpeg')


plant3 = Plant.create!(nickname: "Mimi", user: User.find(2), plant_information: PlantInformation.find_by(name: "Cactus"), age_in_days: 69, like_number: rand(1..50))
file = URI.open('https://ma-petite-jardinerie.fr/13001-superlarge_default/cactus-pot-de-85-cm.jpg')
plant3.photo.attach(io: file, filename: 'plant3.jpg', content_type: 'image/jpeg')


plant4 = Plant.create!(nickname: "Fifi", user: User.find(2), plant_information: PlantInformation.find_by(name: "Tulipe"), age_in_days: 76, like_number: rand(1..50))
file = URI.open('https://media.gerbeaud.net/2016/09/640/tulipes-pot-bordure.jpg')
plant4.photo.attach(io: file, filename: 'plant4.jpg', content_type: 'image/jpeg')


plant5 = Plant.create!(nickname: "Loulou", user: User.find(2), plant_information: PlantInformation.find_by(name: "Cactus"), age_in_days: 33, like_number: rand(1..50))
file = URI.open('https://www.cdiscount.com/pdt2/8/2/6/2/550x550/non3560234531826/rw/cactus-nomade-en-pot-42cm-existe-en-2-modeles.jpg')
plant5.photo.attach(io: file, filename: 'plant5.jpg', content_type: 'image/jpeg')


plant7 = Plant.create!(nickname: "Salamèche", user: User.find(3), plant_information: PlantInformation.find_by(name: "Tulipe"), age_in_days: 484, like_number: rand(1..50))
file = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZUmlRVZXM8v-YJ1ouVdY3-80F1I0-velaVQ&usqp=CAU')
plant7.photo.attach(io: file, filename: 'plant7.jpg', content_type: 'image/jpeg')


plant8 = Plant.create!(nickname: "Bulbizarre", user: User.find(3), plant_information: PlantInformation.find_by(name: "Monstera"), age_in_days: 69, like_number: rand(1..50))
file = URI.open('https://cdn.shopify.com/s/files/1/0013/3529/6118/products/gallery_secondary_monstera-deliciosa-6.jpg?v=1588504371')
plant8.photo.attach(io: file, filename: 'plant8.jpg', content_type: 'image/jpeg')


plant9 = Plant.create!(nickname: "Carapuce", user: User.find(3), plant_information: PlantInformation.find_by(name: "Strawberry"), age_in_days: 19, like_number: rand(1..50))
file = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgnSjEgw2aC8WuV5ugKXnDBN-SA7QzXcrRVg&usqp=CAU')
plant9.photo.attach(io: file, filename: 'plant9.jpg', content_type: 'image/jpeg')


puts "assignation terminé"

puts "création des taches"

PlantInformation.all.each do |plant_information|
  Task.create!(name: "Arroser abondamment", score: 10, intervalle: 1, plant_information: plant_information)
  Task.create!(name: "Arracher les mauvaises herbes", score: 8, intervalle: 2, plant_information: plant_information)
  Task.create!(name: "Chanter une berceuse", score: 5, intervalle: 3, plant_information: plant_information)
end

puts "taches créées"




