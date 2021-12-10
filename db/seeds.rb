def create_recipe(recipe_hash)
  recipe = Recipe.create(
    name: recipe_hash['name'],
    prep_time: recipe_hash['prep_time'],
    rate: recipe_hash['rate'],
    author_tip: recipe_hash['author_tip'],
    budget: recipe_hash['budget']
  )
  puts "Created recipe #{recipe_hash['name']}"
  return recipe
end

def create_ingredient(ingredient, recipe_id)
  if check_first_character_is_number(ingredient)
    ingredient_quantity = ingredient.split(' ', 2).first
    ingredient_name = ingredient.split(' ', 2).last
  else
    ingredient_quantity = 1
    ingredient_name = ingredient
  end
    ingredient = Ingredient.find_or_create_by(name: ingredient_name.downcase)
    puts "Created ingredient #{ingredient_name}"
    RecipeIngredient.create(recipe_id: recipe_id, ingredient_id: ingredient.id,
        quantity: ingredient_quantity)
    puts "Created RecipeIngredient #{ingredient_name} for Recipe #{recipe_id}"
end

def check_first_character_is_number(ingredient)
  ingredient[0] >= '0' && ingredient[0] <= '9'
end

if Recipe.count == 0
  file = File.read('./recipes.json')
  data = file.split("\n")
  data.each do |data_hash|
    recipe_hash = JSON.parse(data_hash)
    recipe = create_recipe(recipe_hash)
    ingredients_list = recipe_hash['ingredients']
    ingredients_list.each do |ingredient_string|
      create_ingredient(ingredient_string, recipe.id)
    end
  end
end
