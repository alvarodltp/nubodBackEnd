class ExerciseSetsSerializer < ActiveModel::Serializer
  attributes :id, :workout_id, :exercise_id, :weight, :reps

  belongs_to :workout
  belongs_to :exercise
end
