require 'faker'

puts 'Clean database...'

User.destroy_all

puts 'Creating 5 fake user...'
puts 'Creating 10 Alternatives'

billy = User.new(
    username: "Billy Frampton",
    email: "b-frampton@gmail.com",
    password: 'password',
  )
  billy.save!

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
    username: 'Coline.R',
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
    title: "Beeswax Food Wraps",
    description: "Both my husband and I love to cook, and we delight in sharing our gastronomic adventures with those we love. However, I’ve always hated using plastic wrap each time we take one of our culinary creations out the door. So I set out to find a plastic wrap alternative.",
    ingredients: ["Cosmetic-grade beeswax pellets", "100% cotton fabric", "Scissors or pinking shears","Brush","Parchment paper","Baking sheet"],
    difficulty: "Moderate",
    prep_time: DateTime.new(2012, 8, 29, 0, 15, 0),
    alimentation_list: ["Zero Waste", "Plastic-Free"],
    alt_at: ["Food plastic wrap","Aluminium foil"],
    user: billy,
    )
    beewaxwrap.remote_pic_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1576094422/index_pic_vdfx93.jpg"
    beewaxwrap.save!

  step1 = Photo.new(
    name: "Cut the fabric",
    detail: 'Preheat the oven to 200°F or the lowest setting. Cut the fabric into sizes that will fit on your baking sheet. For a snack bag, use a 7" by 14" piece of fabric. A 14" by 14" square will cover most sandwiches. Pinking shears will help prevent your swatches from fraying, but scissors will also get the job done.',
    alternative: beewaxwrap,
    )
    step1.remote_photo_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1576094422/Step1_etgoq5.jpg"
    step1.save!

  step2 = Photo.new(
    name: "Place on a baking tray",
    detail: "Line a baking sheet with parchment paper and place the fabric on top. If your fabric is one-sided, place the patterned side facedown. Use a fresh piece of parchment paper each time you make another wrap" ,
    alternative: beewaxwrap,
    )
    step2.remote_photo_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1576094422/Step2_whivae.jpg"
    step2.save!

  step3 = Photo.new(
    name: "Sprinkle the pellets",
    detail: "Evenly distribute a liberal amount of beeswax pellets all over the fabric. Make sure you get pellets near the edges too." ,
    alternative: beewaxwrap,
    )
    step3.remote_photo_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1576094422/Step3_kl6ucw.jpg"
    step3.save!

  step4 = Photo.new(
    name: "Melt and spread the beeswax",
    detail: "Place the sheet in the oven for about 4-8 minutes. When the pellets melt completely, take the tray out and use a paintbrush to spread the wax evenly over the entire fabric." ,
    alternative: beewaxwrap,
    )
    step4.remote_photo_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1576094422/Step4_sehpie.jpg"
    step4.save!

  step5 = Photo.new(
    name: "Let dry",
    detail: "Using tongs, remove the fabric from the baking sheet. It should feel cool to the touch after waving it for a few seconds in the air. Hang the fabric up to dry or set it on the back of a chair with the beeswax side facing up." ,
    alternative: beewaxwrap,
    )
    step5.remote_photo_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1576094422/Step5_urb1qj.jpg"
    step5.save!


  step6 = Photo.new(
    name: "Customize your wraps",
    detail: "Once the beeswax has set and is not very tacky, you can add buttons or hand-sew them into small pouches." ,
    alternative: beewaxwrap,
    )
    step6.remote_photo_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1576094423/Step6_erdjv3.jpg"
    step6.save!


pierre_da = Alternative.new(
    title: "Natural Deodorant",
    description: "A simple DIY Natural Deodorant recipe that smells amazing and works too! Made with clean, all-natural ingredients and ready in under 10 minutes, this natural deodorant recipe will quickly become a staple in your body routine.",
    ingredients: ["", "", "",""],
    difficulty: "Challenging",
    prep_time: DateTime.new(2012, 8, 29, 0, 35, 0),
    alimentation_list: ["Bio", "Zero Waste"],
    alt_at: ["Deodorant"],
    user: user3,
    )
    pierre_da.remote_pic_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1576099017/deodorant_yairkv.jpg"
    pierre_da.save!

prod4 = Alternative.new(
    title: "Mason Jar",
    description: "Repurpose your mason jars with one of these 50 DIY projects. From practical uses to beautiful home decor ideas, you're sure to find at least one project that you'll love.",
    ingredients: ["", "", "",""],
    difficulty: "Very easy",
    prep_time: DateTime.new(2012, 8, 29, 0, 10, 0),
    alimentation_list: ["", ""],
    alt_at: [""],
    user: user1,
    )
    prod4.remote_pic_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1576099655/Extraordinary-Adorable-DIY-Mason-Jar-Crafts-to-Pursue_psxion.jpg"
    prod4.save!


prod6 = Alternative.new(
    title: "Tawashi sponge",
    description: "Tawashi sponges are a 100% recycled and free alternative, and they're perfect if you have a few old spare socks on hand",
    ingredients: ["", "", "",""],
    difficulty: "Moderate",
    prep_time: DateTime.new(2012, 8, 29, 0, 10, 0),
    alimentation_list: ["Plastic-Free", "Zero Waste"],
    alt_at: ["Classic sponge"],
    user: user2,
    )
    prod6.remote_pic_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1576161582/Prod_6_rz4b5v.jpg"
    prod6.save!

prod7 = Alternative.new(
    title: "Homemade Laundry Detergent",
    description: "Making your own natural, homemade laundry detergent is one of the easiest parts of a transition to natural living. This natural laundry soap recipe a great way to save money on laundry detergent and is incredibly easy to make.",
    ingredients: ["", "", "",""],
    difficulty: "Easy",
    prep_time: DateTime.new(2012, 8, 29, 0, 20, 0),
    alimentation_list: ["Plastic-Free", "Zero Waste"],
    alt_at: ["Detergent"],
    user: user1,
    )
    prod7.remote_pic_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1576161582/Prod_7_ya8cvv.jpg"
    prod7.save!

prod8 = Alternative.new(
    title: "Homemade Toothpaste",
    description: "There are some natural substitutes for the above ingredients which can be used for making home-based toothpastes. These natural constituents not only deliver oral health benefits at par with conventional toothpaste but also have no side effects. They include coconut oil, baking soda and sea salt",
    ingredients: ["", "", "",""],
    difficulty: "Moderate",
    prep_time: DateTime.new(2012, 8, 29, 0, 30, 0),
    alimentation_list: ["Bio", "Zero Waste"],
    alt_at: ["Classic Toothpaste"],
    user: user3,
    )
    prod8.remote_pic_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1576161582/Prod8_iyeahk.jpg"
    prod8.save!

prod9 = Alternative.new(
    title: "Eco-friendly sanitary pads",
    description: "Follow our step-by-step guide to make your own eco-friendly, reusable sanitary pads - the same method used by women and girls in Nepal to manage their periods.",
    ingredients: ["", "", "",""],
    difficulty: "Moderate",
    prep_time: DateTime.new(2012, 8, 29, 0, 25, 0),
    alimentation_list: ["Bio", "Plastic-Free","Zero Waste"],
    alt_at: ["Sanitary pads"],
    user: ben,
    )
    prod9.remote_pic_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1576161582/Prod_9_fwjlrh.jpg"
    prod9.save!

prod10 = Alternative.new(
    title: "Natural shampoo",
    description: "Consider this instructable your ultimate guide to making homemade shampoo! Here are one easy shampoo recipe you can use to find the perfect formula for your hair. The benefits are that you can use all natural ingredients, avoid all of the fillers and irritants commercial makers use, scent it any way you want, and customize it to suit your hairs needs.",
    ingredients: ["", "", "",""],
    difficulty: "Moderate",
    prep_time: DateTime.new(2012, 8, 29, 0, 35, 0),
    alimentation_list: ["Bio", "Vegan","Zero Waste"],
    alt_at: ["Classic shampoo"],
    user: romain,
    )
    prod10.remote_pic_url = "https://res.cloudinary.com/dgpkng6h9/image/upload/v1576161581/Prod10_mbiyhv.jpg"
    prod10.save!

puts 'Finished!'

puts "user created : #{User.count} "
puts "Alternatives created : #{Alternative.count} "
