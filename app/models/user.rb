class User < ApplicationRecord
  belongs_to :role
  has_many :user_addresses
  has_many :addresses through: :user_addresses
end
