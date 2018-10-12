# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'net/http'
require 'json'
require 'pp'

User.destroy_all
Role.destroy_all
Address.destroy_all
Province.destroy_all
Tax.destroy_all
Brand.destroy_all
Category.destroy_all
Product.destroy_all
ProductColor.destroy_all
Currency.destroy_all
Stock.destroy_all
Store.destroy_all
Color.destroy_all


role = Role.create(:name => "admin", :description => "Administrator")
role.users.create(:name =>Faker::Name.first_name, :password => Faker::Code.ean)

role = Role.create(:name => "customer", :description => "Normal customer")
10.times {
  role.users.create(:name =>Faker::Name.first_name, :password => Faker::Code.ean)
}

##### Province
url = 'https://simplemaps.com/static/data/country-cities/ca/ca.json'
uri = URI(url)
response = Net::HTTP.get(uri)
resp = JSON.parse(response)

resp.each do |city|
  if (Province.where(name: city['admin']).count == 0)
    Province.create(:name => city['admin'])
  end
end

##### Tax
tax = Tax.create(:gst => 0.05, :pst => 0)
tax.provinces << Province.where(name: ['Alberta', 'Northwest Territories', 'Nunavut', 'Québec', 'Yukon'])
tax = Tax.create(:gst => 0.05, :pst => 0.06)
tax.provinces << Province.where(name: ['Saskatchewan'])
tax = Tax.create(:gst => 0.05, :pst => 0.07)
tax.provinces << Province.where(name: ['British Columbia'])
tax = Tax.create(:gst => 0.05, :pst => 0.08)
tax.provinces << Province.where(name: ['Manitoba'])
tax = Tax.create(:gst => 0, :pst => 0)
tax.provinces << Province.where(name: ['New Brunswick', 'Newfoundland and Labrador', 'Nova Scotia', 'Ontario', 'Prince Edward Island'])

##### Product, Brand, Category, Color
url = 'http://makeup-api.herokuapp.com/api/v1/products.json'
uri = URI(url)
response = Net::HTTP.get(uri)
resp = JSON.parse(response)

i = 1
resp.each do |prod|

  product = Product.create(:name => prod['name'], :price => prod['price'], :image_link => prod['image_link'], :rating => prod['rating'], :description => prod['description'])

  if ((brand = Brand.where(name: prod['brand']).first) == nil)
    brand = Brand.create(:name => prod['brand'])
  end
  brand.products << product

  if ((category = Category.where(name: prod['category']).first) == nil)
    category = Category.create(:name => prod['category'])
  end
  category.products << product

  prod['product_colors'].each do |colr|
    if((color = Color.where(hex_value: colr['hex_value']).first) == nil)
      color = Color.create(:hex_value => colr['hex_value'], :colour_name => colr['colour_name'])
    end
    color.products << product
  end

end

##### Currency
currency = Currency.create(:name =>'CAD', :sign => '$')
currency.products << Product.all





