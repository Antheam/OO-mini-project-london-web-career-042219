class Recipe
@@all =[]
attr_accessor :ingredients
def initialize()

@@all<< self

end

def users
  RecipeCard.all.select {|recipe|recipe.user == self}
end

def add_ingredients(ingredients)
ingredients.each {|ingredient|RecipeIngredient.new(self, ingredient)}
end

def add_recipe_card(recipe,date, rating)
end
end
