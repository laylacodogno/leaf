class CreateCommonCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :common_categories do |t|
      t.string :name, null: false
      t.string :normalized_name, null: false

      t.timestamps
    end
  end
end
