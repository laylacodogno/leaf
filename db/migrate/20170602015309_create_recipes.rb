class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.time :preparation_time
      t.integer :servings
      t.string :directions, null: false

      t.timestamps
    end
  end
end
