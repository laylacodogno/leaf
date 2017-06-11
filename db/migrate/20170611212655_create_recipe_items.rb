class CreateRecipeItems < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_items do |t|
      t.float :amount, null: false

      t.timestamps
    end
  end
end
