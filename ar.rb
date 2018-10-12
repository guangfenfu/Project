# Load the required gems/libraries.
require 'rubygems'
require 'bundler/setup'
require 'active_record'
require 'sqlite3'
require 'logger'
require 'faker'

# Load all of our ActiveRecord::Base objects.
require_relative 'app/models/application_record.rb'
require_relative 'app/models/address.rb'
require_relative 'app/models/brand.rb'
require_relative 'app/models/category.rb'
require_relative 'app/models/color.rb'
require_relative 'app/models/currency.rb'
require_relative 'app/models/product.rb'
require_relative 'app/models/product_color.rb'
require_relative 'app/models/province.rb'
require_relative 'app/models/role.rb'
require_relative 'app/models/stock.rb'
require_relative 'app/models/store.rb'
require_relative 'app/models/tax.rb'
require_relative 'app/models/user.rb'
require_relative 'app/models/user_address.rb'

# Establish our connection to our serverless sqlite3 database.
ActiveRecord::Base.establish_connection :adapter => 'sqlite3', :database => 'db/development.sqlite3'

# For debugging purposes, uncomment this line to see the SQL generated by ActiveRecord:
ActiveRecord::Base.logger = Logger.new(STDOUT)