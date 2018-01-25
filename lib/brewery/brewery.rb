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

  def self.clear
    @@all.clear
  end

end
