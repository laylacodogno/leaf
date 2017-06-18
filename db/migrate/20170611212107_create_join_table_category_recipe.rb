class CreateJoinTableCategoryRecipe < ActiveRecord::Migration[5.0]
  def change
    create_join_table :categories, :recipes do |t|
      t.index [:category_id, :recipe_id]
    end
  end
end
