class Plane < ApplicationRecord
  include PgSearch

  belongs_to :user #:owner, class_name: "User"
  has_many :rentals
  validates :rate, presence: true
  validates :make, presence: true
  validates :description, presence: true
  validates :location, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  #has_many :renters, through: :rentals,  class_name: "User"
  mount_uploader :picture, PictureUploader

  pg_search_scope :full_search,
    against: [ :make, :description, :location],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  after_validation :set_default_picture, if: :picture_missing?

  private

  def set_default_picture
    self.remote_picture_url = "https://chrisguillebeau.com/files/2016/10/plane.jpg"
  end

  def picture_missing?
    picture.blank?
  end
end
