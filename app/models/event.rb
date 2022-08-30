class Event < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :bookings
  has_many :bottles

  # Validations
  validates :name, :address, :date, :level, presence: true
  validates :level, inclusion: { in: %w[Comfirmé Intermidiaire Débutant] }
end
