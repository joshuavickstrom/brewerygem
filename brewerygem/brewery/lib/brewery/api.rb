class BreweryGem::API
  def self.list_breweries
    breweries = RestClient.get("http://api.brewerydb.com/v2/brewery.list?format=json&key=59c865f579f97048514d374fa26ecbf3")
    @brewery_list = JSON.parse(breweries)
  end
end
