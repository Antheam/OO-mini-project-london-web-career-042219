require_relative '../config/environment.rb'

r1=Recipe.new()

u1 = User.new('Ross')

ingredient1 = Ingredient.new('Tomato')

u1.add_recipe_card(r1, "date", 2)
u1.add_recipe_card(r1, "date", 4)
u1.add_recipe_card(r1, "date", 56)
u1.add_recipe_card(r1, "date", 6)
u1.add_recipe_card(r1, "date", 1)



binding.pry
'lalal'
