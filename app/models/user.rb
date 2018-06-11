class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :planes # :owned_planes, class_name: "Plane"
  has_many :rentals
  has_many :rented_planes, through: :rentals, source: :plane


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
