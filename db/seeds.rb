# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name:  "nguyenluong",
             email: "freedom@gmail.com",
             password:              "12345678",
             password_confirmation: "12345678",
             admin: true,
	     activated: true,
	     acticated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "freedom#{n+1}@gmail.com"
  password = "12345678"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
	       activated: true,
	       activated_at: Time.zone.now)
end
