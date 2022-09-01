class RemoveAndAddPostalCodeUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :postal_code
    add_column :users, :postal_code, :string
  end
end
