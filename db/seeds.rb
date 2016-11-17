require 'json'
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = open(url).read
ingredient = JSON.parse(ingredients)
ingredient["drinks"].each do |element|
  i = Ingredient.new(name: element["strIngredient1"])
  i.save!
  p i.name
end
