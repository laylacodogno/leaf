class Recipe < ApplicationRecord
	has_and_belongs_to_many :categories, dependent: :destroy
	
	has_many :recipe_items, dependent: :destroy, inverse_of: :recipe
	accepts_nested_attributes_for :recipe_items, :allow_destroy => true

	belongs_to :user

	validates :title, presence: true, length: { minimum: 3, unless: "title.blank?" }
	validates :directions, presence: true, length: { minimum: 15, unless: "directions.blank?" }
	validates :servings, numericality: { greater_than_or_equal_to: 1, unless: "servings.blank?" }
	validates :categories, presence: true
	validates :recipe_items, presence: true
end
