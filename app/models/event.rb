class Event < ApplicationRecord
  belongs_to :host, class_name: "User"
  has_many :bookings
  has_many :bottles
  has_many :guests, through: :bookings, class_name: "User" # Rajout Lucie

  CATEGORIES = %w[Alsace-Lorraine Beaujolais Bordeaux Bourgogne Champagne Corse Jura-Bugey-Savoie Languedoc-Roussillon Loire Provence Rhône Sud-Ouest]

  # Validations
  validates :name, :address, :date, :level, presence: true
  validates :level, inclusion: { in: %w[Novice Intermédiaire Expert] }
  validates :category, inclusion: { in: CATEGORIES }

  # Geocoding
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  after_create do
    case category
    when CATEGORIES[0]
      self.photo = "alsace.jpg"
    when CATEGORIES[1]
      self.photo = "beaujolais.jpg"
    when CATEGORIES[2]
      self.photo = "bordeaux.jpg"
    when CATEGORIES[3]
      self.photo = "bourgogne.jpg"
    when CATEGORIES[4]
      self.photo = "champagne.jpg"
    when CATEGORIES[5]
      self.photo = "corse.jpg"
    when CATEGORIES[6]
      self.photo = "jura.jpg"
    when CATEGORIES[7]
      self.photo = "languedoc.jpg"
    when CATEGORIES[8]
      self.photo = "loire.jpg"
    when CATEGORIES[9]
      self.photo = "provence.jpg"
    when CATEGORIES[10]
      self.photo = "rhone.jpg"
    when CATEGORIES[11]
      self.photo = "sud.jpg"
    end
    self.save
  end
end
