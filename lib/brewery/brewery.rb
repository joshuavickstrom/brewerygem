
class BreweryGem::Brewery

  attr_accessor :name, :address, :website
  @@all = []

  def initialize(name,address,website)
    @name = name
    @address = address
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
