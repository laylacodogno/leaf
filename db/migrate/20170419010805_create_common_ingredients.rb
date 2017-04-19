class CreateCommonIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :common_ingredients do |t|
      t.string :name
      t.string :normalized_name

      t.timestamps
    end
  end
end
