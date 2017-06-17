module RecipesHelper
	def show_recipe_item_full_name(recipe_item)
		full_name = ""
		if recipe_item.measurement_unit.name.length > 2
			full_name = recipe_item.amount.to_s + " " + recipe_item.measurement_unit.name + " " + recipe_item.ingredient.name
		else
			full_name = recipe_item.amount.to_s + recipe_item.measurement_unit.name + " " + recipe_item.ingredient.name
		end

		full_name
  end
end
