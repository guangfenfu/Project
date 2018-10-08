class Province < ApplicationRecord
  belongs_to :tax
  has_many :addresses
end
