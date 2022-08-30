class Event < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :bookings
  has_many :bottles
end
