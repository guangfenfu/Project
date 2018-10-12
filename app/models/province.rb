class Province < ApplicationRecord
  belongs_to :tax
  has_many :addresses

  validates :name, presence:true
end
