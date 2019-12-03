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
    user: user,
    )
    # seedpackage.remote_photo_url = "http://res.cloudinary.com/dgpkng6h9/image/upload/v1574951261/courge.jpg"
    alternative.save!
  end

end

5.times do
  user = User.new(
    email: Faker::Internet.email,
    password: 'password',
  )
  user.save!
end

puts 'Finished!'

puts "user created : #{User.count} "
puts "Alternatives created : #{Alternative.count} "
