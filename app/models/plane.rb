class Plane < ApplicationRecord
  belongs_to :user #:owner, class_name: "User"
  has_many :rentals
  validates :rate, presence: true
  validates :make, presence: true
  validates :description, presence: true
  validates :location, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  #has_many :renters, through: :rentals,  class_name: "User"
  include PgSearch
  multisearchable against: [ :make, :description, :location ]
  mount_uploader :picture, PictureUploader
end
