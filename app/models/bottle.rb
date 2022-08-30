class Bottle < ApplicationRecord
  belongs_to :event
  belongs_to :user

  # Validations
  validates :country, :region, :appelation, :vintage, presence: true
end
