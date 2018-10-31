class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
        t.integer :diet_id
        t.float :serving_size
        t.float :measure
        t.float :calories
        t.float :carbs
        t.float :fats
        t.float :proteins
        t.float :sodium
        t.float :sugars
      t.timestamps
    end
  end
end
