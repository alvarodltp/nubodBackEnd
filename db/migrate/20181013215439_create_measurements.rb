class CreateMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.integer :user_id
      t.date :date
      t.float :body_weight
      t.float :body_fat
      t.float :bmr
      t.float :neck
      t.float :shoulder
      t.float :chest
      t.float :bicep
      t.float :waist
      t.float :hip
      t.float :thigh
      t.timestamps
    end
  end
end
