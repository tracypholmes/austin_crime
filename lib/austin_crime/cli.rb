class AustinCrime::CLI

  def initialize; end

  def call
    puts "Welcome to Austin Crime Search!"
    list_types
  end

    def list_types
      puts "Please enter the number next to the crime type for more information: "
      puts 'Enter 1 to view Assault data.'
      puts 'Enter 2 to view Burglary data.'
      puts 'Enter 3 to view Crash data.'
      puts 'Enter 4 to view DWI data.'
      puts 'Enter 5 to view Indecent Exposure data.'
      puts "\nYou may also enter 'q' to Quit"
      crime_types = gets.chomp
    end




end
