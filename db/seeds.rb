# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:"jomecurrecyle",
             email:"jome131@example.com",
             password:              "passwordfaker",
             password_confirmation: "passwordfaker")

99.times do |index|
  name  = Faker::Name.name
  User.create!(name: name,
               email: "useryyy#{index}@example.com",
               password:              "passwordfaker",
               password_confirmation: "passwordfaker")
end

users = User.order(:created_at).take(6)
50.times do
  users.each do|user|
    user.microposts.create!(content: Faker::Lorem)
  end
end