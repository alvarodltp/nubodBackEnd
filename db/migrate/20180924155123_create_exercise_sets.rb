class CreateExerciseSets < ActiveRecord::Migration[5.2]
  def change
    create_table :exercise_sets do |t|
      t.integer :workout_id
      t.integer :exercise_id
      t.float :weight
      t.float :reps
      t.timestamps
    end
  end
end
