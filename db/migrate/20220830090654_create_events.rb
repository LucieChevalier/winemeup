class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :address
      t.date :date
      t.string :category
      t.string :level
      t.string :host_request
      t.integer :max_number_guest
      t.integer :price_range
      t.references :host, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
