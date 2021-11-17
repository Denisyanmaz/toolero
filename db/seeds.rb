# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Reservation.destroy_all
Tool.destroy_all
User.destroy_all

10.times do
  user = User.new(
    username: Faker::Internet.username,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
  user.save!
  (1..5).to_a.sample.times do
    tool = Tool.new(
      name: ["Gedore", "Halder", "Picard", "Bosch", "Hazet", "Festool", "Metabo", "Fein", "Eibenstock"].sample,
      tool_type: ["Hammer", "Drill", "Ratchet", "Wrench", "Screw drivers", "Lawn Mower", "Chainsaw"].sample,
      price: Faker::Number.within(range: 1..15),
      description: Faker::Lorem.sentence(word_count: 20),
      availability: true,
      user: user
    )
    tool.save!
  end
end
