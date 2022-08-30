class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Guest
  has_many :bookings, foreign_key: :guest_id

  # Host
  has_many :events, foreign_key: :host_id
  has_many :received_bookings, through: :events, source: :bookings

  # User
  has_many :bottles

  # Validation
  # validates :name, presence: true
end
