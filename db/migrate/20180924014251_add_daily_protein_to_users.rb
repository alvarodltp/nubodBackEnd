class AddDailyProteinToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :daily_protein, :integer
  end
end
