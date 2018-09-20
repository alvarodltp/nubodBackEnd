class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :muscle_group
      t.string :target
      t.string :category
      t.string :instructions
      t.string :equipment_needed
      t.string :target_image
      t.string :instruction_image
      t.float :rating
      t.timestamps
    end
  end
end
