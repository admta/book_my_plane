class Plane < ApplicationRecord
  belongs_to :user #:owner, class_name: "User"
  has_many :rentals
  validates :rate, presence: true
  validates :make, presence: true
  validates :description, presence: true
  validates :location, presence: true
  #has_many :renters, through: :rentals,  class_name: "User"

end
