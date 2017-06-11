class AddRelationsToRecipeItems < ActiveRecord::Migration[5.0]
  def change
  	add_reference :recipe_items, :ingredient, foreign_key: true
  	add_reference :recipe_items, :measurement_unit, foreign_key: true
  	add_reference :recipe_items, :recipe, foreign_key: true
  end
end
