# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all

puts 'Creating category...'
development = Category.create!(name: 'site MVP')

puts 'Creating products...'

Product.create!(sku: 'MVP LP', name: 'LP PRODUCT MVP', category: development, photo_url: 'https://res.cloudinary.com/dbtnehfrf/image/upload/v1620679520/location_xmaliq.png', price_cents: '19900')

puts 'Finished!'