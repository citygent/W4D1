class Shelter

attr_reader :name 
attr_accessor :clients, :dinosaurs
  
  def initialize name
    @name = name
    @dinosaurs = []
    @clients = []
  end

  def add_dinosaur(dino_name, dino_species, dino_age, dino_gender, dino_toys)
    dinosaurs << Dinosaur.new(dino_name, dino_species, dino_age, dino_gender, dino_toys)
  end

  def add_client(client_name, client_age, client_gender, client_pets)
    clients << Client.new(client_name, client_age, client_gender, client_pets)
  end

end