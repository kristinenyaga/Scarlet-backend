# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

class Seed 
  def self.begin
      seed = Seed.new
      seed.generate_users
  end

  def generate_users
      10.times do |i|
          @user = User.create!(
              firstname:Faker::Name.name,
              lastname:Faker::Name.name,
              email:Faker::Internet.email,
              password: Faker::Internet.password,
              description:Faker::Lorem.paragraph(sentence_count: 2),
              image_url:Faker::Avatar.image
          )
          article = Article.create!(
              user: @user,
              title:Faker::Movie.title,
              content:Faker::Lorem.paragraph(sentence_count: 5),
              category:"Art",
              rating:Faker::Number.within(range: 1..5),
              image_url:Faker::Avatar.image

          )
      end
  end
end

Seed.begin