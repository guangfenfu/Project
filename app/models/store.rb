class Store < ApplicationRecord
  has_many :stocks
  has_many :products, through: :stocks

  validates :name, :address, presence: true
end
