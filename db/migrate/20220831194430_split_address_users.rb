class SplitAddressUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :postal_code, :integer
    add_column :users, :city, :string
  end
end
