class Store < ApplicationRecord
  has_many :stocks, dependent: :destroy
  has_many :products, through: :stocks

  validates :name, :address, presence: true
end
