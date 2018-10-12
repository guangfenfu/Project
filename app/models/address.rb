class Address < ApplicationRecord
  belongs_to :province
  has_many :user_addresses, dependent: :destroy
  has_many :users, through: :user_addresses

  validates :receiver, :address_detail, :phone, presence: true
end
