class Ingredient < ApplicationRecord

	belongs_to :user


	validates :name, presence: true, length: { minimum: 3, unless: "name.blank?" },
		uniqueness: { scope: :user, message: "ops, esse ingrediente já existe." }

	validates :user, presence: true

	before_save :set_normalized_name

  def set_normalized_name
    self.normalized_name = self.name.parameterize
  end
end
