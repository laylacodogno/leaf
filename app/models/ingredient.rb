class Ingredient < ApplicationRecord

	belongs_to :user
		
	validates :name, presence: true, length: { minimum: 3, unless: "name.blank?" },
		uniqueness: { scope: :user, message: "ops, esse ingrediente já existe." }
	validates :user, presence: true
end
