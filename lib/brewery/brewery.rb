require 'pp'
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

  def self.find_by_name(input)
    @@all.include?(input)
      puts "Input valid. Loading brewery information..."
      pp BreweryGem::Brewery.new(@name, @address, @website)
  end

end
