require 'faker'

puts 'Clean database...'

User.destroy_all

puts 'Creating 3 users master'


user1 = User.new(
    username: 'alexandre.kaus',
    email: 'kaus.alexandre@gmail.com',
    password: 'password',
  )

    alternative = Alternative.new(
    title:    "Bougie d'ambiance",
    description: "Offrez-vous un instant de bien-être et de détente avec cette bougie parfumée aux huiles essentielles de Mandarine et de Petitgrain, reconnues pour leurs vertus relaxantes et apaisantes. Sa douce lumière et son odeur fruitée calment l'esprit, aident à positiver et apaisent les angoisses.",
    ingredients: ["Cire Soja en copeaux (4 verres doseurs 25 ml)", "Huile essentielle Petitgrain Bigarade BIO (70 gouttes)", "Huile essentielle Mandarine jaune (17 gouttes)" ],
    difficulty: ["Easy"],
    prep_time: Time.now,
    alimentation_list: ["Bio","No plastic"],
    pic: "https://res.cloudinary.com/dgpkng6h9/image/upload/v1575647451/veeq82qzrejsag4qxy1r.jpg",
    user: user1,
    )
user1.save!

      photo = Photo.new(
        name: "Faire fondre",
        detail: "Faites fondre la cire de soja au bain-marie, puis y faire tremper une mèche de coton préalablement découpée (pour faire 6 cm de longueur) pendant 2 minutes.",
        alternative: alternative,
        )
      photo.remote_photo_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1575647869/gmkptrtsf3si6wwlsdvk.jpg"
      photo.save!

      photo2 = Photo.new(
        name: "Placement de la mèche",
        detail: "Façonnez la mèche avec vos doigts pour qu'elle prenne une position bien droite, puis mettez-la dans le trou du socle en métal prévu à cet effet et pincez la base du socle à l'aide d'une pince ou d'une paire de ciseaux afin de faire tenir la mèche dans l'embout.",
        alternative: alternative,
        )
      photo2.remote_photo_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1575647869/gmkptrtsf3si6wwlsdvk.jpg"
      photo2.save!

      photo3 = Photo.new(
        name: "Finition",
        detail: "Coulez la préparation dans le verre à bougie.",
        alternative: alternative,
        )
      photo3.remote_photo_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1575647869/gmkptrtsf3si6wwlsdvk.jpg"
      photo3.save!
alternative.save!













user2 = User.new(
    username: 'bogoss-du-13',
    email: 'bogoss-du-13@hotmail.com',
    password: 'password',
  )
  user2.save!


user3 = User.new(
    username: 'bogoss-du-57-et-du-13',
    email: 'bogoss-du-57-et-du-13@hotmail.com',
    password: 'password',
  )
  user3.save!


# alternative = Alternative.new(
#     title:    'Lessive liquide pour machine',
#     description: 'Une lessive au savon de Marseille écologique, économique, sans parfum, ni     colorant, ni allergène. Idéale pour le lavage en machine de tous les types de textiles et de  toute la famille. Utilisez un verre (~120 ml) de lessive par machine. Bien agiter avant     chaque emploi.',
#     ingredients: [‘Eau déminéralisée', 'Ecodétergent Savon de Marseille sans palme en paillettes', 'Ecodétergent Cristaux de soude’],
#     difficulty: 2,
#     prep_time: 0.25,
#     alt_at:
#     alimentation_list: $list_of_tags.sample,
#     pic: ,
#     user: 'Valentin.sth',
#     )
#     alternative.save!



# Seed pour produits

# puts 'Creating 1 fake product user...'
# 1.times do
#   user = User.new(
#     username: Faker::Internet.username,
#     email: Faker::Internet.email,
#     password: 'password',
#   )
#   user.save!

#   1.times do
#     alternative = Alternative.new(
#     title:    Faker::Food.dish,
#     description: Faker::Food.description,
#     ingredients: ["50 €"],
#     difficulty: "0",
#     prep_time: Time.now,
#     alimentation_list: $list_of_tags.sample,
#     diy: false,
#     pic: "https://res.cloudinary.com/dgpkng6h9/image/upload/v1575647451/veeq82qzrejsag4qxy1r.jpg",
#     user: user,
#     )
#     alternative.save!

#   end
# end



# Seed pour DIYs




puts 'Finished!'

puts "user created : #{User.count} "
puts "Alternatives created : #{Alternative.count} "
