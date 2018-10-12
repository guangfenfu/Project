class Product < ApplicationRecord
  belongs_to :brand
  belongs_to :category
  belongs_to :currency

  has_many :stocks, dependent: :destroy
  has_many :stores, through: :stocks

  has_many :product_colors, dependent: :destroy
  has_many :colors, through: :product_colors

  validates :name, :price, :image_link, :description, presence:true
end
