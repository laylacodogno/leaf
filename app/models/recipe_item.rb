class RecipeItem < ApplicationRecord
	belongs_to :ingredient
	belongs_to :measurement_unit
	belongs_to :recipe
end
