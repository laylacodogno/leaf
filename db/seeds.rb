# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
begin
	ActiveRecord::Base.transaction do
		puts "Leaf - Starting seed"

		user = User.create(
			name: 'Pedro Belli de Souza Olivera',
			email: 'pedro.belli2@gmail.com',
			login: 'pedro.belli2',
			state: User.states[:PR]
		)

		user = User.create(
			name: 'Layla Cristine de Oliveira Codogno',
			email: 'layla.codogno@gmail.com',
			login: 'layla.codogno',
			state: User.states[:PR]
		)

		CommonIngredient.create(
			name: 'Ovo',
			normalized_name: 'Ovo'.parameterize
		)

		CommonIngredient.create(
			name: 'Farinha de Trigo',
			normalized_name: 'Farinha de Trigo'.parameterize
		)

		CommonIngredient.create(
			name: 'Água',
			normalized_name: 'Água'.parameterize
		)

		CommonIngredient.create(
			name: 'Óleo Vegetal',
			normalized_name: 'Óleo Vegetal'.parameterize
		)
		CommonIngredient.create(
			name: 'Azeite de Oliva',
			normalized_name: 'Azeite de Oliva'.parameterize
		)

		CommonCategory.create(
			name: 'Entradas',
			normalized_name: 'Entradas'.parameterize
		)
		CommonCategory.create(
			name: 'Pratos Principais',
			normalized_name: 'Pratos Principais'.parameterize
		)
		CommonCategory.create(
			name: 'Sobremesas',
			normalized_name: 'Sobremesas'.parameterize
		)
		CommonCategory.create(
			name: 'Salgados',
			normalized_name: 'Salgados'.parameterize
		)

		puts "Seed done!"
	end
rescue => exp
	puts(exp.message)
end
