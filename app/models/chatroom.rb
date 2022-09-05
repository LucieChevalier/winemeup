class Chatroom < ApplicationRecord
  has_many :messages

  # CHatroom
  belongs_to :event
end
