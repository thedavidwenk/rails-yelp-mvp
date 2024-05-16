class Restaurant < ApplicationRecord
  has_many :reviews
  
  VALID_CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: VALID_CATEGORIES, message: "%{value} is not a valid category" }
end
