class Shelter

attr_reader :name
attr_accessor :dinosaur_pens, :dino_name, :dino_species, :dino_age, :dino_gender, :dino_toys
  
  def initialize name
    @name = name
    @dinosaur_pens = []
  end

  def add_animal(dino_name, dino_species, dino_age, dino_gender, dino_toys)
    dinosaur_pens << Dinosaur.new(dino_name, dino_species, dino_age, dino_gender, dino_toys)
  end

end