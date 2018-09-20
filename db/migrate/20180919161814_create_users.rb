class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :location
      t.string :gender
      t.string :email
      t.float :weight
      t.string :activity_level
      t.float :body_fat
      t.float :bmr
      t.string :goal
    end
  end
end
