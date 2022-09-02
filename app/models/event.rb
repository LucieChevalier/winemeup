class Event < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :bookings
  has_many :bottles
  has_many :guests, through: :bookings, class_name: "User" # Rajout Lucie

  has_one_attached :photo

  CATEGORIES = %i[alsace beaujolais bordeaux bourgogne champagne corse jura lanquedoc loire provence rhone sud]

  # Validations
  # validates :name, :address, :date, :level, presence: true
  validates :level, inclusion: { in: %w[Novice Intermédiaire Expert] }
  validates :category, inclusion: { in: CATEGORIES }

end
