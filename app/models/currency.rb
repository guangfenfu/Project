class Currency < ApplicationRecord
  has_many :products, dependent: :destroy

  validates :name, :sign, presence: true
end
