require_relative 'shelter.rb'
require_relative 'clients.rb'
require_relative 'animals.rb'

jp = Shelter.new('Jurrassic Park')

def list_dinosaurs shelter
  shelter.dinosaurs.each_with_index {|dinosaur, index| puts "#{index}: #{dinosaur}"}
end

def list_clients shelter
  shelter.clients.each_with_index {|client, index| puts "Client Number: #{index} \n#{client}"}
end

def menu
  puts `clear`
  puts '*=' * 25
  puts ''
  puts 'Welcome to Jurassic Park!'.center 50
  puts "(it's a Ruby System, you know this...)".center 50
  puts ''
  puts '=*' * 25
  puts '1. Check in Dinosaur'
  puts '2. List Dinosaurs we have for Adoption'
  puts '3. Add Client'
  puts '4. List Clients'
  puts 'Q. Quit'
  print "->"
  gets.chomp
end

response = menu

while response.upcase != 'Q'
  case response
    when '1' # Check in Dinosaur
      puts 'What is the Dinosaur\'s name?'
      dino_name = gets.chomp
      puts 'What is the Dinosaur\'s species?'
      dino_species = gets.chomp
      puts 'What is the Dinosaur\'s age?'
      dino_age = gets.to_i
      puts 'What is the Dinosaur\'s gender?'
      dino_gender = gets.chomp
      puts 'What is the Dinosaur\'s favorite toys?'
      dino_toys = gets.chomp

      puts jp.add_dinosaur(dino_name, dino_species, dino_age, dino_gender, dino_toys)
      gets

    when '2' # List Dinosaurs
      puts "Here are our Dinosaurs:"
      list_dinosaurs(jp)
      gets

    when '3' # Add Client
      puts 'What is your name?'
      client_name = gets.chomp
      puts 'How old are you?'
      client_age = gets.to_i
      puts 'What is your gender?'
      client_gender = gets.chomp
      puts 'How many pets do you have?'
      client_pets = gets.to_i

      puts jp.add_client(client_name, client_age, client_gender, client_pets)
      gets

    when '4' # List Clients
      puts "Our Clients:"
      list_clients(jp)
      gets

    when 'Q' # Quit
  end
response = menu
end