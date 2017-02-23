require 'httparty'
# this is my controller
class AustinCrime::CLI
  def initialize; end

  def call
    puts 'Welcome to Austin Crime Search!'
    inputs
    menu
    # cya
  end

  def inputs
    # Select type of crime to view
    puts <<-DOC
    1. DWI
    2. HARASSMENT
    3. CRUELTY TO ANIMALS
    4. THEFT
    DOC

    # @crimes = AustinCrime::Crime.all
    # @crimes.each.with_index(1) do |crime, i|
    #   puts "#{i}. #{crime.type} - #{crime.increp} - #{crime.date}"
    # end
  end

  def menu
    input = 'nil'
    while input != 'q'
      puts "\nPlease enter the number of the crime type for more information. Or enter 'list' to see your list of options."
      puts "You may also enter 'q' to Quit."
      input = gets.strip.downcase
      # if input.to_i > 0 && input.to_i < 5
      # puts AustinCrime::Crime.all
      case input
      when '1'
        puts AustinCrime::Crime.dwi
      when '2'
        puts AustinCrime::Crime.harassment
      when '3'
        puts AustinCrime::Crime.cruelty
      when '4'
        puts AustinCrime::Crime.theft
      when 'q'
        puts 'Thanks for visiting. Come again for more reasons NOT TO MOVE TO AUSTIN!'
      when 'list'
        inputs
      else
        puts "Need some help? Type 'list' to see your options or 'q' to quit."
      end
    end
  end
end
