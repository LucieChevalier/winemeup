class Event < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :bookings
  has_many :bottles

  # Validations
  validates :name, :address, :date, :level, presence: true
  validates :level, inclusion: { in: %w[Confirmé Intermédiaire Débutant] }
  validates :category, inclusion: { in: %w[Sud-Ouest Bordeaux Loire Champagne Alsace-Lorraine Bourgogne Jura-Bugey-Savoie Beaujolais Rhône Corse Provence Languedoc-Roussillon] }
end
