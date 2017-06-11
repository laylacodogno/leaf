class MeasurementUnitConversion < ApplicationRecord
	belongs_to :from_measurement_unit, class_name: 'MeasurementUnit', foreign_key: :from_measurement_unit_id
	belongs_to :to_measurement_unit, class_name: 'MeasurementUnit', foreign_key: :to_measurement_unit_id

	def self.find_conversion(from_measurement_unit_id, to_measurement_unit_id)
		temp_measurement_unit_conversion = MeasurementUnitConversion
		.where(from_measurement_unit_id: from_measurement_unit_id, to_measurement_unit_id: to_measurement_unit_id)
		.or(
			MeasurementUnitConversion
			.where(from_measurement_unit_id: to_measurement_unit_id, to_measurement_unit_id: from_measurement_unit_id)
		).first
	end

	def self.convert(value, from_measurement_unit_id, to_measurement_unit_id)
		measurement_unit_conversion = self.find_conversion(from_measurement_unit_id, to_measurement_unit_id)
		output = 0

		if measurement_unit_conversion.from_measurement_unit_id == from_measurement_unit_id && measurement_unit_conversion.to_measurement_unit_id == to_measurement_unit_id
			output = value * measurement_unit_conversion.factor
		elsif measurement_unit_conversion.from_measurement_unit_id == to_measurement_unit_id && measurement_unit_conversion.to_measurement_unit_id == from_measurement_unit_id
			output = value / measurement_unit_conversion.factor		
		end

		output
	end
end
