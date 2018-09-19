class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :user_name, :age, :weight, :gender, :activity_level, :goal, :calories, :bmr, :body_fat, :location, :email

end
