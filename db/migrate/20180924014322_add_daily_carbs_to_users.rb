class AddDailyCarbsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :daily_carbs, :integer
  end
end
