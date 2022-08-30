class AddMinAndMaxPriceToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :min_price, :integer
    add_column :events, :max_price, :integer
  end
end
