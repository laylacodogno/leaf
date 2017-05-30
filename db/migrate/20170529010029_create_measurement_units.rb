class CreateMeasurementUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :measurement_units do |t|
      t.string :name, null: false
      t.references :measurement_unit, foreign_key: true, null: true

      t.timestamps
    end
  end
end
