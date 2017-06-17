module RecipesHelper
	def show_recipe_item_full_name(recipe_item)
		full_name = recipe_item.amount.to_s
		if recipe_item.measurement_unit.name.length > 2
			full_name +=  " " + recipe_item.measurement_unit.name.pluralize + " de "
		else
			full_name += recipe_item.measurement_unit.name + " "
		end

		full_name + recipe_item.ingredient.name
  end
end
