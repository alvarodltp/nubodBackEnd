class AddDailyFatsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :daily_fats, :integer
  end
end
