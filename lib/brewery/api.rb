require 'pp'
class BreweryGem::API

  def self.list_breweries(input)
    breweries = RestClient.get("http://api.brewerydb.com/v2/locations", {params:  {key: "59c865f579f97048514d374fa26ecbf3", region: input }})
    @brewery_list = JSON.parse(breweries)
    if @brewery_list["data"]
      @brewery_list["data"].each do |region|
        name = region["brewery"]["name"]
        address = "#{region["streetAddress"]}, #{region["locality"]}, #{region["region"]} #{region["postalCode"]}"
        website = region["brewery"]["website"]
        BreweryGem::Brewery.new(name, address, website)
      end
    end
  end
end
