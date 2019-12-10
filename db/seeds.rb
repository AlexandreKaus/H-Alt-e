require 'faker'

puts 'Clean database...'

User.destroy_all

puts 'Creating 3 users master'

user = User.new(
    username: 'alexandre.kaus',
    email: 'kaus.alexandre@gmail.com',
    password: 'password',
  )
  3.times do
    alternative = Alternative.new(
    title:    Faker::Food.dish,
    description: Faker::Food.description,
    ingredients: [Faker::Food.ingredient, Faker::Food.ingredient, Faker::Food.ingredient],
    difficulty: ["Very easy","Easy","Moderate","Challenging","Hard"].sample,
    prep_time: Time.now,
    alimentation_list: $list_of_tags.sample,
    pic: "https://res.cloudinary.com/dgpkng6h9/image/upload/v1575647451/veeq82qzrejsag4qxy1r.jpg",
    user: user,
    )
    alternative.save!

    3.times do
      photo = Photo.new(
        name: "Nom de la step",
        detail: "description de la step",
        alternative: alternative,
        )
      photo.remote_photo_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1575647869/gmkptrtsf3si6wwlsdvk.jpg"
      photo.save!
    end
  end
  user.save!

user = User.new(
    username: 'bogoss-du-13',
    email: 'bogoss-du-13@hotmail.com',
    password: 'password',
  )
  user.save!


user = User.new(
    username: 'bogoss-du-57-et-du-13',
    email: 'bogoss-du-57-et-du-13@hotmail.com',
    password: 'password',
  )
  user.save!


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
