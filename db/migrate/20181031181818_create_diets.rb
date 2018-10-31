class CreateDiets < ActiveRecord::Migration[5.2]
  def change
    create_table :diets do |t|
      t.integer :user_id
      t.date :date
      t.integer :total_calories
      t.integer :total_fats
      t.integer :total_carbs
      t.integer :total_proteins
      t.integer :goal_calories
      t.integer :goal_fats
      t.integer :goal_carbs
      t.integer :goal_proteins  
      t.timestamps
    end
  end
end
