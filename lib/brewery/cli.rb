require 'pp'
class BreweryGem::CLI

  def start
    puts "Welcome to the BreweryGem! Please provide the state you'd like to explore."
    input = gets.strip

    BreweryGem::API.list_breweries(input)

    puts ""
    puts "Want information about a brewery you saw? Enter the name below:"
    input = gets.strip

    BreweryGem::Brewery.find_by_name(input)

    puts ""
    puts "Would you like to explore a new region? Type Y or N"
    input = gets.strip
    if input == "Y"
      BreweryGem::Brewery.clear
      start
    else
      puts "Thank you. Program closed."
      exit
    end

  end

end
