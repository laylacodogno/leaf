class MeasurementUnit < ApplicationRecord
	has_many :recipe_items

	belongs_to :superior_measurement_unit, class_name: 'MeasurementUnit', foreign_key: :superior_measurement_unit_id
end
