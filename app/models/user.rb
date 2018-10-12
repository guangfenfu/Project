class User < ApplicationRecord
  belongs_to :role
  has_many :user_addresses, dependent: :destroy
  has_many :addresses, through: :user_addresses

  validates :name, :password, presence: true
end
