class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :muscle_group, :target, :category, :instructions, :equipment_needed, :target_image, :instruction_image, :rating
  has_many :exercise_sets
end
