class Ingredient < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, too_short: "ops nome muito pequeno. deve ter no mínimo 3 caracteres." }, uniqueness: {message: "ops, esse ingrediente já existe."}
end
