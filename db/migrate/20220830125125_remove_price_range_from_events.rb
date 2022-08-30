class RemovePriceRangeFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :price_range, :integer
  end
end
