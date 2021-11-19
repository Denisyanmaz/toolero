# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'open-uri'

Reservation.destroy_all
Tool.destroy_all
User.destroy_all

users = []
addresses = [
  "Marienplatz, München",
  "Stachus, München",
  "Gärtnerplatz, München",
  "Odeonsplatz, München",
  "Hauptbahnhof, München",
  "Viktualienmarkt, München",
  "Königsplatz, München",
  "Münchner Freiheit, München",
  "Wienerplatz, München",
  "Balanstr. 21, München"
]

addresses.each do |address|
  user = User.new(
    username: Faker::Internet.username,
    address: address,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
  user.save!
  users << user
end

    tool1 = Tool.new(
      name: "Collins",
      tool_type: "Hammer",
      price: "2",
      description: "Perfect for driving stakes and chipping or cracking concrete and stone. Double face sledge hammer head. Milled Face, American hickory wood handle.",
      availability: true,
      user: users[0]
    )
    url = "https://res.cloudinary.com/dhr7binhu/image/upload/v1637332832/collinshammer_agdghh.jpg"
    file = URI.open(url)
    tool1.photo.attach(io: file, filename: 'tool.png', content_type: 'image/png')
    tool1.save!

    tool2 = Tool.new(
      name: "Estwing",
      tool_type: "Hammer",
      price: "3",
      description: "Balance and temper are unsurpassed. It has a bonded and molded on Shock Reduction Grip that reduces shock up to 70 percent and will not come off. Nail hammers are designed for striking common and finishing nails and nail sets. Made in USA. Protect your eyes from flying particles and dust. Always wear safety goggles. Bystanders shall also wear safety goggles.",
      availability: true,
      user: users[1]
    )
    url = "https://res.cloudinary.com/dhr7binhu/image/upload/v1637332832/hammerestwing_l9vunm.jpg"
    file = URI.open(url)
    tool2.photo.attach(io: file, filename: 'tool.png', content_type: 'image/png')
    tool2.save!

    tool3 = Tool.new(
      name: "Bosch",
      tool_type: "Chain Saw",
      price: "10",
      description: "The universal tools from Bosch – Flexible and powerful with a intelligent items and for a variety of projects. The compact battery chain saw Universalc Grove 18 A thanks to lighter weight is comfortable and manage. Easy cut by New stop hooks for clean and easy to under cutting action. Battery life, short charging time, battery level and practical display allows for work efficiently. Box contents: Universalc Grove 18, Batt",
      availability: true,
      user: users[2]
    )
    url = "https://res.cloudinary.com/dhr7binhu/image/upload/v1637332832/chainsawbosch_epbokb.jpg"
    file = URI.open(url)
    tool3.photo.attach(io: file, filename: 'tool.png', content_type: 'image/png')
    tool3.save!

    tool4 = Tool.new(
      name: "Makita",
      tool_type: "Cordless Drill Driver",
      price: "5",
      description: "22 minute charge time with the air cooled makstar optimum charging system. Lithium-ion batteries have greater life spans than their Ni-MH or Ni-Cad counterparts giving 430% greater run time. Two speed gear box.",
      availability: true,
      user: users[3]
    )
    url = "https://res.cloudinary.com/dhr7binhu/image/upload/v1637332833/makitadrilldriver_do5nzm.jpg"
    file = URI.open(url)
    tool4.photo.attach(io: file, filename: 'tool.png', content_type: 'image/png')
    tool4.save!

    tool5 = Tool.new(
      name: "DeWalt",
      tool_type: "Circular Saw Tool",
      price: "10",
      description: "The DCS391B 20V MAX 6-1/2 in. circular saw with a 6-1/2 in. carbide tipped blade operates on a powerful 5150 rpm motor with a 0 to 50-degree bevel capacity on a lightweight and durable magnesium shoe.",
      availability: true,
      user: users[4]
    )
    url = "https://res.cloudinary.com/dhr7binhu/image/upload/v1637332832/circularsaw_rlmey1.jpg"
    file = URI.open(url)
    tool5.photo.attach(io: file, filename: 'tool.png', content_type: 'image/png')
    tool5.save!

    tool6 = Tool.new(
      name: "Bosch",
      tool_type: "Jig Saw",
      price: "5",
      description: "Powerful jigsaw in narrow bar shape. SDS system for tool-free saw blade replacement. Fast work progress thanks to high power. Ideally suited for round and cross cuts in solid wood, chipboard and wood composites",
      availability: true,
      user: users[5]
    )
    url = "https://res.cloudinary.com/dhr7binhu/image/upload/v1637332833/jigsaw_ftovy3.jpg"
    file = URI.open(url)
    tool6.photo.attach(io: file, filename: 'tool.png', content_type: 'image/png')
    tool6.save!

    tool7 = Tool.new(
      name: "Bosch",
      tool_type: "Cordless Drill Driver",
      price: "6",
      description: "The cordless screwdriver GSB 18 V-21 offers professional performance thanks to 55 Nm torque. Entry-level model with interchangeable carbon brushes and full metal gears for drilling, hammering and screwing. Flexible use thanks to 13 mm chuck and LED light for illuminating dark work areas",
      availability: true,
      user: users[6]
    )
    url = "https://res.cloudinary.com/dhr7binhu/image/upload/v1637332832/boschdrilldriver_fugugd.jpg"
    file = URI.open(url)
    tool7.photo.attach(io: file, filename: 'tool.png', content_type: 'image/png')
    tool7.save!

    tool8 = Tool.new(
      name: "Craftsman",
      tool_type: "Riding Mower",
      price: "20",
      description: "This Zero-Turn Riding Mower provides the ultimate mowing experience. Its strong 23 HP twin-cylinder engine has an easy and reliable starting system with no prime, no choke and it features a 46 in. steel deck. Equipped with sleek new frame design, a dual-range hydrostatic transmission and high-back seating for optimum support and comfort, it will provide an exceptional ride as you power through the lawn with its zero-turn radius. You can add an optional mulching kit to create the perfect finishing touches.",
      availability: true,
      user: users[7]
    )
    url = "https://res.cloudinary.com/dhr7binhu/image/upload/v1637332832/lawn-mower-tractor_hjchnn.jpg"
    file = URI.open(url)
    tool8.photo.attach(io: file, filename: 'tool.png', content_type: 'image/png')
    tool8.save!

    tool9 = Tool.new(
      name: "Makita",
      tool_type: "Cordless Hammer Drill",
      price: "10",
      description: "The 18V LXT Brushless ½” Driver-Drill is an ideal premium drilling and driving solution. This makes the driver-drill ideal for working in-between studs with up to a 6” accessory. An L.E.D. light illuminates the work area. ",
      availability: true,
      user: users[8]
    )
    url = "https://res.cloudinary.com/dhr7binhu/image/upload/v1637332833/tool9_vshjmv.jpg"
    file = URI.open(url)
    tool9.photo.attach(io: file, filename: 'tool.png', content_type: 'image/png')
    tool9.save!

    tool10 = Tool.new(
      name: "Bosch",
      tool_type: "Circular Saw",
      price: "6",
      description: "Power and precision for straight cuts with guide rail. Powerful 1600-watt motor and 66 mm cut depth in the wood. Compact guide rail for particularly straight cuts. Clean system box for clean work.",
      availability: true,
      user: users[9]
    )
    url = "https://res.cloudinary.com/dhr7binhu/image/upload/v1637332833/tool10_njmwnk.jpg"
    file = URI.open(url)
    tool10.photo.attach(io: file, filename: 'tool.png', content_type: 'image/png')
    tool10.save!


      # (1..5).to_a.sample.times do
  #   tool = Tool.new(
    #     name: ["Gedore", "Halder", "Picard", "Bosch", "Hazet", "Festool", "Metabo", "Fein", "Eibenstock"].sample,
    #     tool_type: ["Hammer", "Drill", "Ratchet", "Wrench", "Screw drivers", "Lawn Mower", "Chainsaw"].sample,
    #     price: Faker::Number.within(range: 1..15),
    #     description: Faker::Lorem.sentence(word_count: 20),
    #     availability: true,
    #     user: user
    #   )
    #   tool.save!
    # end
