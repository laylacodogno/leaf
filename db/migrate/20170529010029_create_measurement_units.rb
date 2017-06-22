class CreateMeasurementUnits < ActiveRecord::Migration[5.0]
  def change
  create_table :measurement_units do |t|
    t.string :name, null: false
    t.references :superior_measurement_unit, index: true, foreign_key: { to_table: :measurement_units }, null: true

    t.timestamps
  end
  end
end
