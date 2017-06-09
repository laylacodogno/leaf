class Recipe < ApplicationRecord
	belongs_to :user

	validates :title, presence: true, length: { minimum: 3, unless: "title.blank?" }
	validates :directions, presence: true, length: { minimum: 15, unless: "directions.blank?" }
	validates :servings, numericality: { greater_than_or_equal_to: 1, unless: "servings.blank?" }
end
