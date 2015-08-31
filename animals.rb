class Dinosaur
  attr_accessor :dinosaur_pens, :dino_name, :dino_species, :dino_age, :dino_gender, :dino_toys

  def initialize(dino_name, dino_species, dino_age, dino_gender, dino_toys)
    @dino_name = dino_name
    @dino_species = dino_species
    @dino_age = dino_age
    @dino_gender = dino_gender
    @dino_toys = dino_toys
  end

  def to_s
    "#{dino_name}-#{dino_species} (#{dino_gender}, #{dino_age}) is checked in. Make sure you have #{dino_toys}!"
  end

end
