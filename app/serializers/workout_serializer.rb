class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :date, :duration, :total_weight_lifted, :personal_record

  belongs_to :user
  has_many :exercise_sets
  has_many :exercises
end
