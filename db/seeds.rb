# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require 'json'
require 'rest-client'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients_list = RestClient.get(url)
# p ingredients_list
ingredient = JSON.parse(ingredients_list)
array = ingredient.first[1]
# puts "#{user['name']} - #{user['bio']}"
ingredients_array = []

array.each do |index|

  ingredients_array <<  Ingredient.create(name: index["strIngredient1"])

end
 p ingredients_array
