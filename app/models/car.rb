class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews
  has_many :favourites

  validates :owner, :brand, :model, :year, presence: true
end
