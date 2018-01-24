class BreweryGem::API
  def self.list_breweries(input)
    breweries = RestClient.get("http://api.brewerydb.com/v2/locations", {params:  {key: "59c865f579f97048514d374fa26ecbf3", region: input }})
    @brewery_list = JSON.parse(breweries)
    binding.pry
    # iterate over the list to restrict information printed; use the objects
  end
end
