class RemoveReferenceFromEvent < ActiveRecord::Migration[7.0]
  def change
    remove_reference :events, :chatroom, index: true, foreign_key: true
  end
end
