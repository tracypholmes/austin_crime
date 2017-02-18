
class AustinCrime::CLI

  def initialize; end

  def call
    puts "Welcome to Austin Crime Search!"
    inputs
    menu
  #  cya
  end

    def inputs
      types = ["DWI", "HARASSMENT", "CRUELTY TO ANIMALS", "THEFT", "CRIMINAL MISCHIEF"]

 # Select type of crime to view
      puts <<-DOC
      1. DWI
      2. HARASSMENT
      3. CRUELTY TO ANIMALS
      4. THEFT
      5. CRIMINAL MISCHIEF
      DOC

      puts "\nPlease enter the number of the crime type for more information."
      # or enter 'list' to see your list of options. "
      puts "You may also enter 'q' to Quit."
      input = gets.strip.downcase
      input = input.to_i - 1
    end
      type = inputs[input]

      # @crimes = AustinCrime::Crime.all
      # @crimes.each.with_index(1) do |crime, i|
      #   puts "#{i}. #{crime.type} - #{crime.increp} - #{crime.date}"
      # end
    end

# Loop for incorrect selection
    def menu
      input = nil
      while input != "q"

      if input.to_i > 0 && input.to_i < 6
      #  puts "#{the_crime.type} - #{the_crime.increp} - #{the_crime.date}"
      elsif input == "list"
        inputs
      elsif input == "q"
        cya
      else
        puts "Need some help? Type 'list' to see your options."
      end
    end
  end

  def cya
    puts "Come back soon to check out why you SHOULDN'T move here!"
    abort
  end

end
