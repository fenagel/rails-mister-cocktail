require 'json'
require 'open-uri'

Ingredient.destroy_all
Cocktail.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

drinks = JSON.parse(open(url).read)["drinks"]

drinks.each do |drink|
  Ingredient.create!(name: drink["strIngredient1"])
end

file_mojito = URI.open('https://source.unsplash.com/1600x900/?mojito')
file_bloody = URI.open('https://source.unsplash.com/1600x900/?bloody-mary')
file_sex = URI.open('https://source.unsplash.com/1600x900/?cocktail')

mojito = Cocktail.create!(name: 'Mojito')
mojito.photo.attach(io: file_mojito, filename: 'mojito.jpg', content_type: 'image/jpg')
bloody = Cocktail.create!(name: 'Bloody Mary')
bloody.photo.attach(io: file_bloody, filename: 'bloody.jpg', content_type: 'image/jpg')
sex = Cocktail.create!(name: 'Sex on the Beach')
sex.photo.attach(io: file_sex, filename: 'sex_on_the_beach.jpg', content_type: 'image/jpg')

cocktails = [mojito, bloody, sex]
cocktails.each do |cocktail|
  puts "#{cocktail.name} created!"
end
