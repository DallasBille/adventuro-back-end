# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Adventure.destroy_all
Donation.destroy_all


mode = ["Bicycle", "Car", "MotorCycle", "Foot","Plane", "Moped", "Boat", "Other"]

User.create(first_name: "Dallas", last_name: "Bille", email:"dallasbille@gmail.com", username: "dallas" , password: "dallas")
User.create(first_name: "Taran", last_name: "Causey", email:"tarancausey@gmail.com", username: "taran" , password: "taran")
User.create(first_name: "Colin", last_name: "Webster", email:"colinwebster@gmail.com", username: "colin" , password: "colin")


Adventure.create(user_id: 1, title: "Great Grand Adventure", mission: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", cost: rand(500..20000), mode: mode.sample)

Adventure.create(user_id: 2 , title: "A Mission From God", mission: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", cost: rand(500..20000), mode: mode.sample)

Adventure.create(user_id: 3, title: "Moped Across the Country", mission: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", cost: rand(500..20000), mode: mode.sample)

Donation.create(user_id: 1, adventure_id: 1, amount: rand(10..200))
Donation.create(user_id: 1, adventure_id: 2, amount: rand(10..200))
Donation.create(user_id: 1, adventure_id: 3, amount: rand(10..200))
Donation.create(user_id: 2, adventure_id: 2, amount: rand(10..200))
Donation.create(user_id: 2, adventure_id: 3, amount: rand(10..200))
