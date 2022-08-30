class CreateBottles < ActiveRecord::Migration[7.0]
  def change
    create_table :bottles do |t|
      t.string :name
      t.string :country
      t.string :region
      t.string :appelation
      t.string :domaine_name
      t.string :producer
      t.string :color
      t.string :comment
      t.integer :vintage
      t.integer :price
      t.references :user

      t.timestamps
    end
  end
end
