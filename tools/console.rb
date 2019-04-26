require_relative '../config/environment.rb'

r1=Recipe.new("Burger")
r2 = Recipe.new("Fish and Chips")

u1 = User.new('Ross')

ingredient1 = Ingredient.new('Tomato')
ingredient2 = Ingredient.new('Peanuts')

r2.add_ingredients([ingredient1, ingredient2])

u1.declare_allergy(ingredient2)

u1.add_recipe_card(r1, "date", 2)
u1.add_recipe_card(r1, "date", 4)
u1.add_recipe_card(r2, "date", 56)
u1.add_recipe_card(r1, "date", 6)
u1.add_recipe_card(r1, "date", 1)



binding.pry
'lalal'
