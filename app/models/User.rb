
class User
  
@@all =[]
attr_reader :name

def initialize(name)
  @@all << self
  @name = name
end

def declare_allergy(ingredient)
  Allergy.new(self, ingredient)
end

def allergens
  Allergy.all.select{|allergy| allergy.user == self}
end

def add_recipe_card(recipe, date, rating)
  RecipeCard.new(recipe, self, date, rating)
end

def top_three_recipes
  RecipeCard.all.select{|recipecard| recipecard.user == self}.sort{|a, b|
    b.rating <=> a.rating
  }[0..2]
end


end
