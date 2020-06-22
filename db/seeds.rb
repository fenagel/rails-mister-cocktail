require 'json'
require 'open-uri'

Dose.destroy_all
Ingredient.destroy_all
Cocktail.destroy_all

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

drinks = JSON.parse(open(url).read)["drinks"]

drinks.each do |drink|
  Ingredient.create!(name: drink["strIngredient1"])
end

# file_mojito = URI.open('https://source.unsplash.com/1600x900/?mojito')
# file_bloody = URI.open('https://source.unsplash.com/1600x900/?bloody-mary')
# file_sex = URI.open('https://source.unsplash.com/1600x900/?cocktail')

# mojito = Cocktail.create!(name: 'Mojito')
# mojito.photo.attach(io: file_mojito, filename: 'mojito.jpg', content_type: 'image/jpg')
# bloody = Cocktail.create!(name: 'Bloody Mary')
# bloody.photo.attach(io: file_bloody, filename: 'bloody.jpg', content_type: 'image/jpg')
# long = Cocktail.create!(name: 'Long Island Iced Tea')
# long.photo.attach(io: file_long, filename: 'long.jpg', content_type: 'image/jpg')

# cocktails = [mojito, bloody, long]
# cocktails.each do |cocktail|
#   puts "#{cocktail.name} created!"
# end

mojito = Cocktail.create!(name: "Mojito")
mojito_image = URI.open("http://res.cloudinary.com/fenagel/image/upload/v1592815879/t7uu4r7xondd1tzubgjb.jpg")
mojito.photo.attach(io: mojito_image, filename: 'mojito.jpg', content_type: 'image/jpg')

bloody = Cocktail.create!(name: "Bloody Mary")
bloody_image = URI.open("http://res.cloudinary.com/fenagel/image/upload/v1592815911/edulfe0rcpdvgenebptr.jpg")
bloody.photo.attach(io: bloody_image, filename: 'bloody.jpg', content_type: 'image/jpg')

long = Cocktail.create!(name: "Long Island Iced Tea")
long_image = URI.open("http://res.cloudinary.com/fenagel/image/upload/v1592815941/j4xybawdtovr56xvboam.jpg")
long.photo.attach(io: long_image, filename: 'long.jpg', content_type: 'image/jpg')

aperol = Cocktail.create!(name: "Aperol Spritz")
aperol_image = URI.open("http://res.cloudinary.com/fenagel/image/upload/v1592815972/od0nprqhbpfkmpz1prjj.jpg")
aperol.photo.attach(io: aperol_image, filename: 'aperol.jpg', content_type: 'image/jpg')

blue = Cocktail.create!(name: "Blue Lagoon")
blue_image = URI.open("https://res.cloudinary.com/fenagel/image/upload/v1592816121/attyts38c9xqacfzudcf.jpg")
blue.photo.attach(io: blue_image, filename: 'blue.jpg', content_type: 'image/jpg')

old = Cocktail.create!(name: "Old Fashioned")
old_image = URI.open("http://res.cloudinary.com/fenagel/image/upload/v1592816248/lgwh7mh3ugrdkrqg7oaj.jpg")
old.photo.attach(io: old_image, filename: 'old.jpg', content_type: 'image/jpg')

yellow = Cocktail.create!(name: "Yellow Bird")
yellow_image = URI.open("https://res.cloudinary.com/fenagel/image/upload/v1592817009/i9j4anopcgfj3yffbhur.jpg")
yellow.photo.attach(io: yellow_image, filename: 'yellow.jpg', content_type: 'image/jpg')

black = Cocktail.create!(name: "Black Rumhattan")
black_image = URI.open("http://res.cloudinary.com/fenagel/image/upload/v1592817224/wqrltvtrnctjim9kzvqi.jpg")
black.photo.attach(io: black_image, filename: 'black.jpg', content_type: 'image/jpg')

cocktails = [mojito, bloody, long, aperol, old, yellow, black]
cocktails.each do |cocktail|
  puts "#{cocktail.name} created!"
end
