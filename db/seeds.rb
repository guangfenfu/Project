# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Role.destroy_all
# Address.destroy_all
# Province.destroy_all
# Tax.destroy_all
# Brand.destroy_all
# Category.destroy_all
# Product.destroy_all
# ProductColor.destroy_all
# Currency.destroy_all
# Stock.destroy_all
# Store.destroy_all
# Color.destroy_all


role = Role.create(:name => "admin", :description => "Administrator")
role.users.create(:name =>Faker::Name.first_name, :password => Faker::Code.ean)

role = Role.create(:name => "customer", :description => "Normal customer")
10.times {
  role.users.create(:name =>Faker::Name.first_name, :password => Faker::Code.ean)
}




