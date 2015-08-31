class Client
  attr_accessor :client_name, :client_age, :client_gender, :client_pets

  def initialize(client_name, client_age, client_gender, client_pets)
    @client_name = client_name
    @client_age = client_age
    @client_gender = client_gender
    @client_pets = client_pets
  end

  def to_s
    "Name:#{client_name} Age:#{client_age} Gender:#{client_gender} Pets:#{client_pets}"
  end

end