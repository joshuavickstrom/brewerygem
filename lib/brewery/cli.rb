class BreweryGem::CLI
  def start
    puts "Welcome to the BreweryGem! Below is a list of breweries for you to view."
    BreweryGem::API.list_breweries
  end
end
