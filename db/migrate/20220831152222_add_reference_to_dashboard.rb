class AddReferenceToDashboard < ActiveRecord::Migration[7.0]
  def change
    add_reference :dashboards, :users, null: false, foreign_key: true
  end
end
