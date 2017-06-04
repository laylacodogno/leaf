class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
  create_table :ingredients do |t|
    t.string :name, null: false
    t.string :normalized_name, null: false

    t.timestamps
  end
  end
end
