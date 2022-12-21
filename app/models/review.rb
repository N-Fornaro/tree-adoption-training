class Review < ApplicationRecord
  belongs_to :user
  belongs_to :adoption

  validates :rating, :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, numericality: { in: 0..5 }
  validates :content, length: { in: 3..114 }
end
