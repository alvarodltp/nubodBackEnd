class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :user_name, :body_type, :age, :weight, :height, :gender, :activity_level, :goal, :calories, :bmr, :body_fat, :location, :email, :daily_fats, :daily_carbs, :daily_protein

  has_many :workouts
end
