class BreweryGem::Brewery
  attr_accessor :name, :region, :locality, :website
  @@all = []
  def initialize(region=nil)
    @name = name
    @region = region
    @locality = locality
    @website = website
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(input)
    if breweries.include?(input)
      binding.pry
      self.list_breweries(input)
    elsif
      puts "Please provide a US state to receive local breweries to continue or enter Y to stop."
    else input == "Y"
      puts "Thank you. Exiting program..."
      exit
    end
  end
end
