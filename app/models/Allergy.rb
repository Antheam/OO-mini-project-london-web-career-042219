class Allergy
  @@all = []
  attr_reader :user, :ingredient
  
  def initialize(user, ingredient)
    @@all << self
    @user = user
    @ingredient = ingredient
  end
end
