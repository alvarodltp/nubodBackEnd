class DietSerializer < ActiveModel::Serializer
  attributes :id, :date, :user_id, :total_calories, :total_fats, :total_carbs, :total_proteins,
  :goal_calories, :goal_fats, :goal_carbs, :goal_proteins

  belongs_to :user
  has_many :foods
end
