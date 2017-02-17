
class AustinCrime::CLI

  def initialize; end

  def call
    puts "Welcome to Austin Crime Search!"
    list_types
    menu
    cya
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
      input = nil
      while input != "q"
        puts "Please enter the number of the crime type for more information, or enter 'list' to see your list of options. "
        puts "You may also enter 'q' to Quit."
        input = gets.strip.downcase
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
      when "list"
        list_types
      when "q"
        cya
      else
        puts "Need some help? Type 'list' to see your options or 'q' to quit"
      end
    end
  end

  def cya
    puts "Come back soon to check out why you SHOULDN'T move here!"
    abort
  end

end
