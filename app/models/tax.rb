class Tax < ApplicationRecord
  has_many :provinces, dependent: :destroy
end
