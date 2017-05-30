class MeasurementUnitConversion < ApplicationRecord
	belongs_to :from_measurement_unit, class_name: 'MeasurementUnit', foreign_key: :from_measurement_unit_id
	belongs_to :to_measurement_unit, class_name: 'MeasurementUnit', foreign_key: :to_measurement_unit_id
end
