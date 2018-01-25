class BreweryGem::CLI

  def start
    puts "Welcome to the BreweryGem! Please provide the state you'd like to explore."
    input = gets.strip

    BreweryGem::API.list_breweries(input)
    binding.pry
    puts ""
    puts "Want more information about a brewery you saw? Enter the name below:"
    input = gets.strip

    binding.pry


    self.clear #clear #all before receiving new requests

    # ask for more options

    # or exit
  end

end
