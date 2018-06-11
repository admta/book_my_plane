class Plane < ApplicationRecord
  belongs_to :user #:owner, class_name: "User"
  has_many :rentals
  #has_many :renters, through: :rentals,  class_name: "User"

end
