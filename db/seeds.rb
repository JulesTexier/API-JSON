# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker';
require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)

5.times do 
  User.create(email: Faker::Internet.email, password: "123456")
end

30.times do 
  Article.create(title: Faker::Movie.title, content: Faker::TvShows::Simpsons.quote, user_id: User.all.sample.id)
end
