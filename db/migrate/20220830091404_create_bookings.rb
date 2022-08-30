class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :comment
      t.string :status

      t.references :event
      t.references :guest, foreign_key: { to_table: :users}

      t.timestamps
    end
  end
end
