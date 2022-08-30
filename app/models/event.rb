class Event < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :bookings
  has_many :bottles

  # Validations
  validates :name, :address, :date, :level, presence: true
  validates :level, inclusion: { in: %w[Confirmé Intermédiaire Débutant] }
  validates :category, inclusion: { in: %w[Alsace-Lorraine Beaujolais Bordeaux Bourgogne Champagne Corse Jura-Bugey-Savoie Languedoc-Roussillon Loire Provence Rhône Sud-Ouest] }
end
