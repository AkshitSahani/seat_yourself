class User < ApplicationRecord
  has_many :reservations
  has_many :reserved_restaurants, through: :reservations, class_name: "Restaurant", source: :restaurant
  has_many :owned_restaurants, class_name: "Restaurant"
end
