class MeasurementUnit < ApplicationRecord
	has_many :recipe_items

	
  belongs_to :measurement_unit
end
