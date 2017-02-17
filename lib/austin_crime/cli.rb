
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
      puts "Please enter the number of the crime type for more information. "
      puts "You may also enter 'q' to Quit."
      input = gets.strip
      case input
      when "1"
        puts 'You are now viewing Assault data.'
      when "2"
        puts 'You are now viewing Burglary data.'
      when "3"
        puts 'You are now viewing Crash data.'
      when "4"
        puts 'You are now viewing DWI data.'
      when "5"
        puts 'You are now viewing Indecent Exposure data.'
      when "q"
        puts 'Thank you for visiting. Have a nice day!'
      end
    end
end
