# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Email.destroy_all

User.create(email: 'johnny.cadillac@yopmail.com', password: 123_456)
puts 'Johnny OK'

5.times do
  Email.create(object: Faker::Lorem.sentence,
               body: Faker::Lorem.paragraph,
               read: :false)
end

puts 'Mails OK'
