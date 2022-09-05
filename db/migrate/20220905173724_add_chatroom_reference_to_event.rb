class AddChatroomReferenceToEvent < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :chatroom, foreign_key: true
  end
end
