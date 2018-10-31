class FoodSerializer < ActiveModel::Serializer
  attributes :id, :diet_id, :serving_size, :measure, :calories, :carbs, :fats, :proteins, :sodium, :sugars
  belongs_to :diet
end
