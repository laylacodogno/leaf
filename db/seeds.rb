# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'digest/sha1'

begin
	ActiveRecord::Base.transaction do
		puts "Leaf - Starting seed"
		password = Digest::SHA1.hexdigest('qwerty')

		user_pedro = User.create(
			name: 'Pedro Belli de Souza Olivera',
			email: 'pedro.belli2@gmail.com',
			state: User.states[:PR],
			password: "qwerty", 
			password_confirmation: "qwerty"
		)

		Ingredient.create(
			name: 'Ovo',
			normalized_name: 'Ovo'.parameterize,
			user_id: user_pedro.id
		)
		Ingredient.create(
			name: 'Farinha de Trigo',
			normalized_name: 'Farinha de Trigo'.parameterize,
			user_id: user_pedro.id
		)
		Ingredient.create(
			name: 'Água',
			normalized_name: 'Água'.parameterize,
			user_id: user_pedro.id
		)
		Ingredient.create(
			name: 'Óleo Vegetal',
			normalized_name: 'Óleo Vegetal'.parameterize,
			user_id: user_pedro.id
		)
		Ingredient.create(
			name: 'Azeite de Oliva',
			normalized_name: 'Azeite de Oliva'.parameterize,
			user_id: user_pedro.id
		)

		Category.create(
			name: 'Entradas',
			normalized_name: 'Entradas'.parameterize,
			user_id: user_pedro.id
		)
		Category.create(
			name: 'Pratos Principais',
			normalized_name: 'Pratos Principais'.parameterize,
			user_id: user_pedro.id
		)
		Category.create(
			name: 'Sobremesas',
			normalized_name: 'Sobremesas'.parameterize,
			user_id: user_pedro.id
		)
		Category.create(
			name: 'Salgados',
			normalized_name: 'Salgados'.parameterize,
			user_id: user_pedro.id
		)

		user_layla = User.create(
			name: 'Layla Cristine de Oliveira Codogno',
			email: 'layla.codogno@gmail.com',
			state: User.states[:PR],
			password: "qwerty", 
			password_confirmation: "qwerty"
		)

		Ingredient.create(
			name: 'Ovo',
			normalized_name: 'Ovo'.parameterize,
			user_id: user_layla.id
		)
		Ingredient.create(
			name: 'Farinha de Trigo',
			normalized_name: 'Farinha de Trigo'.parameterize,
			user_id: user_layla.id
		)
		Ingredient.create(
			name: 'Água',
			normalized_name: 'Água'.parameterize,
			user_id: user_layla.id
		)
		Ingredient.create(
			name: 'Óleo Vegetal',
			normalized_name: 'Óleo Vegetal'.parameterize,
			user_id: user_layla.id
		)
		Ingredient.create(
			name: 'Azeite de Oliva',
			normalized_name: 'Azeite de Oliva'.parameterize,
			user_id: user_layla.id
		)

		Category.create(
			name: 'Entradas',
			normalized_name: 'Entradas'.parameterize,
			user_id: user_layla.id
		)
		Category.create(
			name: 'Pratos Principais',
			normalized_name: 'Pratos Principais'.parameterize,
			user_id: user_layla.id
		)
		Category.create(
			name: 'Sobremesas',
			normalized_name: 'Sobremesas'.parameterize,
			user_id: user_layla.id
		)
		Category.create(
			name: 'Salgados',
			normalized_name: 'Salgados'.parameterize,
			user_id: user_layla.id
		)

		MeasurementUnit.create(
			name: 'Unidade',
		)
		measurement_unit_kg = MeasurementUnit.create(
			name: 'Kg'
		)
		measurement_unit_g = MeasurementUnit.create(
			name: 'g',
			measurement_unit: measurement_unit_kg
		)
		measurement_unit_l = MeasurementUnit.create(
			name: 'L'
		)
		measurement_unit_ml = MeasurementUnit.create(
			name: 'ml',
			measurement_unit: measurement_unit_l
		)

		MeasurementUnitConversion.create(
			from_measurement_unit: measurement_unit_g,
			to_measurement_unit: measurement_unit_kg,
			factor: 0.001
		)
		MeasurementUnitConversion.create(
			from_measurement_unit: measurement_unit_ml,
			to_measurement_unit: measurement_unit_l,
			factor: 0.001
		)

		puts "Seed done!"
	end
rescue => exp
	puts(exp.message)
end
