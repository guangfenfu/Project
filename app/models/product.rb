class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  belongs_to :currency

  has_many :stocks
  has_many :stores, through: :stocks

  has_many :product_colors
  has_many :colors, through: :product_colors
end
