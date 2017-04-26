class AddUserToCategories < ActiveRecord::Migration[5.0]
  def change
    add_reference :categories, :user, foreign_key: true
  end
end
