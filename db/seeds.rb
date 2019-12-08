# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
    ingredients: Faker::Food.ingredient,
    difficulty: Faker::Number.between(from: 1, to: 5),
    prep_time: Time.now,
    alimentation_list: $list_of_tags.sample,
    pic: "https://res.cloudinary.com/dgpkng6h9/image/upload/v1575647451/veeq82qzrejsag4qxy1r.jpg",
    user: user,
    )
    alternative.save!

    3.times do
      photo = Photo.new(
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
