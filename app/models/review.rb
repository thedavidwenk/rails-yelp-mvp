class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, length: { minimum: 0, maximum: 5 }
end
