
class AustinCrime::CLI

  def initialize; end

  def call
    puts "Welcome to Austin Crime Search!"
    list_types
    menu
    cya
  end

    def list_types
=begin
      puts <<-DOC
      1. Assault data.
      2. Burglary data.
      3. Crash data.
      4. DWI data.
      5. Indecent Exposure data.
      DOC
=end
      @crime = AustinCrime::Crime.all
      @crime.each.with_index(1) do |crimes, i|
        puts "#{i}. #{crimes.type} - #{crimes.increp} - #{crimes.date}"
      end
    end

    def menu
      input = nil
      while input != "q"
        puts "Please enter the number of the crime type for more information."
        # or enter 'list' to see your list of options. "
        puts "You may also enter 'q' to Quit."
        input = gets.strip.downcase

      if input.to_i > 0 && input.to_i < 6
        puts @crime[input.to_i - 1]
      elsif input == "list"
        list_types
      elsif input == "q"
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
