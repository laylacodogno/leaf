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

		Ingredient.create(
			name: 'Banana',
			normalized_name: 'banana',
			user: user
		)

		Ingredient.create(
			name: 'Aveia',
			normalized_name: 'aveia',
			user: user
		)

		Ingredient.create(
			name: 'Leite',
			normalized_name: 'leite',
			user: user
		)

		user = User.create(
			name: 'Layla Cristine de Oliveira Codogno',
			email: 'layla.codogno@gmail.com',
			login: 'layla.codogno',
			state: User.states[:PR]
		)

		Ingredient.create(
			name: 'Aveia',
			normalized_name: 'aveia',
			user: user
		)

		Ingredient.create(
			name: 'Açai',
			normalized_name: 'acai',
			user: user
		)

		puts "Seed done!"
	end
rescue => exp
	puts(exp.message)
end