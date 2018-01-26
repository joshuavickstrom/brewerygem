
class BreweryGem::CLI

  def start
    region_menu
    details_menu

    puts ""
    puts "Would you like to explore a new region? Type Y or N"
    input = gets.strip
    if input == "Y"
      BreweryGem::Brewery.clear
      start
    else
      puts "Thank you. Program closed."
      exit
    end

  end

  def list_breweries
    if !BreweryGem::Brewery.all.empty?
      BreweryGem::Brewery.all.each.with_index(1) do |b, i|
        puts "#{i}. #{b.name}"
      end
    else
      puts "Unfortunately, the region you provided is dry... Try another one?"
      region_menu
    end
  end

  def brewery_details(input)
    index = input.to_i-1
    b = BreweryGem::Brewery.all[index]
    puts " "
    puts "*********** #{b.name} ***********"
    puts " "
    puts "Address: #{b.address}"
    puts b.website ? "Website: #{b.website}" : "Website: n/a"
    puts " "
    puts "*************************************************"
    puts " "
  end

  def input_valid?(input)
    index = input.to_i-1
    if index.between?(0, BreweryGem::Brewery.all.length-1)
      true
    else
      false
    end
  end

  def region_menu
    puts "Welcome to the BreweryGem! Please provide the state you'd like to explore."
    input = gets.strip

    BreweryGem::API.list_breweries(input)

    list_breweries
  end

  def details_menu
    puts ""
    puts "Want information about a brewery you saw? Enter the number below:"
    input = gets.strip
    if input_valid?(input)
      brewery_details(input)
    else
      list_breweries
      puts "**** Invalid request. Try again. ****"
      details_menu
    end
  end

end
