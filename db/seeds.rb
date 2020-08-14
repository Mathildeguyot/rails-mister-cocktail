# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

lemon = Ingredient.create!(name: "lemon")
ice = Ingredient.create!(name: "ice")
mint = Ingredient.create!(name: "mint leaves")
puts 'ingredients created'

mojito = Cocktail.create!(name: "mojito")
pina_colada = Cocktail.create!(name: "pina colada")
cuba_libre = Cocktail.create!(name: "cuba libre")
puts 'cocktails created'

dose1 = Dose.create!(description: "2cl", cocktail_id: mojito.id, ingredient_id: lemon.id)
p dose1.id
dose2 = Dose.create!(description: "2", cocktail_id: pina_colada.id, ingredient_id: ice.id)
p dose2.id
dose3 = Dose.create!(description: "3cL", cocktail_id: cuba_libre.id, ingredient_id: mint.id)
p dose3.id
puts 'doses created'

# 10.times do |i|
#   cocktail_i = Cocktail.create(name: Faker::Food.sushi)

# end



