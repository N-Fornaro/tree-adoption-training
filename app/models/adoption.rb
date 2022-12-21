class Adoption < ApplicationRecord
  belongs_to :user
  belongs_to :tree
  has_many :reviews, dependent: :destroy

  validates :name, :starts_at, :ends_at, presence: true
end
