require 'faker'

puts 'Clean database...'

User.destroy_all

puts 'Creating 5 fake user...'
puts 'Creating 10 Alternatives'

user1 = User.new(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: 'password',
  )
  user1.save!

user2 = User.new(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: 'password',
  )
  user2.save!

user3 = User.new(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: 'password',
  )
  user3.save!

alex = User.new(
    username: 'AlexandreK',
    email: 'kaus.alexandre@gmail.com',
    password: 'password',
  )
  alex.save!

romain = User.new(
    username: 'RomainH',
    email: 'romain@gmail.com',
    password: 'password',
  )
  romain.save!


ben = User.new(
    username: 'BenR',
    email: 'ben@gmail.com',
    password: 'password',
  )
  ben.save!

beewaxwrap = Alternative.new(
    title: "Beeswax Food Wraps for a Plastic-Free Kitchen",
    description: "If you pack your own lunch every day (maybe your kids' too), it might feel like you're always adding cling wrap to your grocery list and throwing used plastic baggies in the trash. Disposable packaging definitely offers convenience, but it's not the most environmentally friendly option. Enter beeswax wraps: The pliable covers fold up around foods and cover bowls of leftovers",
    ingredients: ["Cosmetic-grade beeswax pellets", "100% cotton fabric", "Scissors or pinking shears","Brush","Parchment paper","Baking sheet"]
    difficulty: "Moderate",
    prep_time: Time.now,
    alimentation_list: [$list_of_tags.sample, $list_of_tags.sample],
    alt_at: ["Dentifrice","Brosse à dent"],
    user: user,
    )
    beewaxwrap.remote_pic_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1575647869/gmkptrtsf3si6wwlsdvk.jpg"
    beewaxwrap.save!

  photo = Photo.new(
    name: "Holder name",
    detail: "description au dd test test test test test test test description au dd test test test test test test test " ,
    alternative: alternative,
    )
    photo.remote_photo_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1575647869/gmkptrtsf3si6wwlsdvk.jpg"
    photo.save!






puts 'Finished!'

puts "user created : #{User.count} "
puts "Alternatives created : #{Alternative.count} "
