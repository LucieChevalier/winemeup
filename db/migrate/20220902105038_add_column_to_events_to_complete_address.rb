class AddColumnToEventsToCompleteAddress < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :city, :string
    add_column :events, :postal_code, :string
    add_column :events, :region, :string
  end
end
