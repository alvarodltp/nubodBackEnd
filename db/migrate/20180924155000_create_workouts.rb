class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.date :date
      t.time :duration
      t.float :total_weight_lifted
      t.float :personal_record
    end
  end
end
