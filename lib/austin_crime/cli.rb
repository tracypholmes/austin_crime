
class AustinCrime::CLI

  def initialize; end

  def call
    puts "Welcome to Austin Crime Search!"
    list_types
    menu
  end

    def list_types
      puts <<-DOC
      1. Assault data.
      2. Burglary data.
      3. Crash data.
      4. DWI data.
      5. Indecent Exposure data.
      DOC
    end

    def menu
      puts "Please enter the number next to the crime type for more information! "
      puts "You may also enter 'q' to Quit."
      crime_types = gets.chomp
    end
end
