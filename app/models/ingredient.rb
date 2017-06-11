class Ingredient < ApplicationRecord
	has_many :recipe_items

	belongs_to :user

	validates :name, presence: true, length: { minimum: 3, unless: "name.blank?" },
		uniqueness: { scope: :user }

	validates :user, presence: true

	before_save :set_normalized_name

  def set_normalized_name
  self.normalized_name = self.name.parameterize
  end
end
