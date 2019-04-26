class Ingredient

  attr_reader :name
@@all =[]
def initialize(name)
  @name = name

  @@all << self

end


def self.most_common_allergen
  allergy_occurences = {}
  Allergy.all.each do |allergy|
    if(!allergy_occurences.key?(allergy))
      allergy_occurences[allergy] = 1
    else
      allergy_occurences[allergy] += 1
    end
  end
  allergy_occurences.max_by{|k, v| v}[0].ingredient
end


end
