class Recipe
@@all =[]
attr_accessor :name
def initialize(name)
  @name = name
@@all<< self
end

def self.all
  @@all
end

def self.most_popular
  RecipeCard.all.max_by{|recipecard| recipecard.recipe.users.length}.recipe
end

def users
  RecipeCard.all.select {|recipe|recipe.user == self}
end

def ingredients
  RecipeIngredient.all.select{|recipeingredient| recipeingredient.recipe == self}
  .map{|recipeingredient| recipeingredient.ingredient}
end

def add_ingredients(ingredients)
  ingredients.each {|ingredient|RecipeIngredient.new(self, ingredient)}
end

def allergens
  Allergy.all.select{|allergen| ingredients.include?(allergen.ingredient)}
  .map{|allergen| allergen.ingredient}
end
end
