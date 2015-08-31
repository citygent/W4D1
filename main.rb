require_relative 'shelter.rb'
require_relative 'clients.rb'
require_relative 'animals.rb'

jp = Shelter.new('Jurrassic Park')

def menu
  puts `clear`
  puts '*=' * 25
  puts ''
  puts 'Welcome to Jurassic Park!'.center 50
  puts "(it's a Ruby System, you know this...)".center 50
  puts ''
  puts '=*' * 25
  puts '1. Check in Dinosaur'
  puts '2. List Dinosaurs'
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

      puts jp.add_animal(dino_name, dino_species, dino_age, dino_gender, dino_toys)
      gets

    when '2' # List Dinosaurs
    when '3' # Add Client
      puts 'What is your name?'
      puts 'How old are you?'
      puts 'What is your gender?'
      puts 'How many pets do you have?'
    when '4' # List Clients
    when 'Q' # Quit
end

end