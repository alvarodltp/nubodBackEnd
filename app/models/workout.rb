class Workout < ApplicationRecord
  belongs_to :user
  has_many :exercise_sets
  has_many :exercises, through: :exercise_sets
end
