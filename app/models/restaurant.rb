class Restaurant < ApplicationRecord
  has_many :reviews
  
  VALID_CATEGORIES = ["Chinese", "Italian", "Japanese", "French", "Belgian"]

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: VALID_CATEGORIES, message: "%{value} is not a valid category" }
end
