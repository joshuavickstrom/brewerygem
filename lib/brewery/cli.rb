class BreweryGem::CLI

  def start
    puts "Welcome to the BreweryGem! Please provide the state you'd like to explore."
    input = gets.strip

    BreweryGem::API.list_breweries(input)

    # puts name/locality of all breweries in numbered list

    # get user input to provide more details

    #clear #all before receiving new requests

    # ask for more options

    # or exit
  end
end
