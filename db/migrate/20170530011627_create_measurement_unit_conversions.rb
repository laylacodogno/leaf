class CreateMeasurementUnitConversions < ActiveRecord::Migration[5.0]
  def change
  create_table :measurement_unit_conversions do |t|
			t.references :from_measurement_unit, index: true, foreign_key: { to_table: :measurement_units }
			t.references :to_measurement_unit, index: true, foreign_key: { to_table: :measurement_units }
    t.float :factor

    t.timestamps
  end
  end
end
