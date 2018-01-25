class BreweryGem::API

  def self.list_breweries(input)
    breweries = RestClient.get("http://api.brewerydb.com/v2/locations", {params:  {key: "59c865f579f97048514d374fa26ecbf3", region: input }})
    @brewery_list = JSON.parse(breweries)
    if breweries.include?(input)
      @brewery_list
    else
      puts "Please provide a US state to receive local breweries to continue or enter Y to stop."
      input = gets.strip
      if input == "Y"
        puts "Thank you. Exiting program..."
        exit
      else
        list_breweries(input)
      end
    end
  end
end
