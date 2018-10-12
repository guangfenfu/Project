class Currency < ApplicationRecord
  has_many :products

  validates :name, :sign, presence: true
end
