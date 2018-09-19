# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(user_name: 'alvarodltp', first_name: 'Alvaro', last_name: 'De La Torre', location: "DC", gender: "male", email: "alvaro@alvaro.com", weight: 180.0, activity_level: "1-3 times per week", body_fat: 15.0, bmr: 1700.0, goal: 'Lose weight', calories: 2400, age: 29)
