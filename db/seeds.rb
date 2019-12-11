# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

require 'faker'

puts 'Clean database...'

User.destroy_all

puts 'Creating 10 fake user...'
5.times do
  user = User.new(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: 'password',
  )
  user.save!

  3.times do
    alternative = Alternative.new(
    title:    Faker::Food.dish,
    description: Faker::Food.description,
    ingredients: [Faker::Food.ingredient, Faker::Food.ingredient, Faker::Food.ingredient],
    difficulty: ["Very easy","Easy","Moderate","Challenging","Hard"].sample,
    prep_time: Time.now,
    alimentation_list: [$list_of_tags.sample, $list_of_tags.sample],
    alt_at: ["Dentifrice","Brosse à dent"],
    pic: "https://res.cloudinary.com/dgpkng6h9/image/upload/v1575647451/veeq82qzrejsag4qxy1r.jpg",
    user: user,
    )
    pic.remote_photo_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1575647869/gmkptrtsf3si6wwlsdvk.jpg"
    alternative.save!

    3.times do
      photo = Photo.new(
        name: "Holder name",
        detail: "description au dd test test test test test test test description au dd test test test test test test test " ,
        alternative: alternative,
        )
      photo.remote_photo_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1575647869/gmkptrtsf3si6wwlsdvk.jpg"
      photo.save!
    end
  end
end

5.times do
  user = User.new(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: 'password',
  )
  user.save!
end

user = User.new(
    username: 'bogoss-du-92-et-du-13',
    email: 'bogoss-du-92-et-du-13@hotmail.com',
    password: 'password',
  )
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


puts 'Finished!'

puts "user created : #{User.count} "
puts "Alternatives created : #{Alternative.count} "
