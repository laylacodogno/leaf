class Ingredient < ApplicationRecord

	belongs_to :user
 	
 	validates :name, presence: true, length: { minimum: 3, too_short: "ops nome muito pequeno. deve ter no mínimo 3 caracteres." }, uniqueness: { scope: :user, message: "ops, esse ingrediente já existe." }
	validates :user, presence: true
end
