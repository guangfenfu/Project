class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  belongs_to :color
  belongs_to :currency
end
