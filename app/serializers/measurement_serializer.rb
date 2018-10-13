class MeasurementSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :date, :body_weight, :body_fat, :bmr, :neck, :shoulder, :chest, :bicep, :waist, :hip, :thigh
  belongs_to :user
end
