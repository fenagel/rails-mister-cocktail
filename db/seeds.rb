require 'json'
require 'open-uri'

Ingredient.destroy_all
Cocktail.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

drinks = JSON.parse(open(url).read)["drinks"]

drinks.each do |drink|
  Ingredient.create!(name: drink["strIngredient1"])
end

mojito = Cocktail.create!(name: 'Mojito')
bloody = Cocktail.create!(name: 'Bloody Mary')
sex = Cocktail.create!(name: 'Sex on the Beach')

cocktails = [mojito, bloody, sex]
cocktails.each do |cocktail|
  puts "#{cocktail.name} created!"
end
