class AddReferenceToBottles < ActiveRecord::Migration[7.0]
  def change
    add_reference :bottles, :event, null: false, foreign_key: true
  end
end
