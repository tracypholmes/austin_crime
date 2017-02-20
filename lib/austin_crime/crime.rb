require 'httparty'
require 'pry'

class AustinCrime::Crime
  # attr_accessor :type, :type_hash, :date, :increp, :url
  # scrape opendata - use API to return crime based on that data
  #   self.url
  # end
  #
  # def self.url
  #   response = HTTParty.get('https://data.austintexas.gov/resource/rkrg-9tez.json')
  #   puts response.body
  # end

  def initialize; end

  def self.dwi
    response = HTTParty.get("https://data.austintexas.gov/resource/rkrg-9tez.json?$where=starts_with(crime_type,'DWI')&$limit=5&$offset=5")
    puts "Got #{response.count} results. Dumping first results:"
    response.first.each do |k, v|
      puts "#{k}: #{v}"
    end
    puts "enter 'more' if you'd like to browse more entries or 'menu' if you'd like to start over"
    input = gets.chomp
    if input == 'more'
      response.collect do |hash|
        hash.collect do |k, v|
        puts "#{k}: #{v}"
      end
    end
    elsif input == 'menu'
      AustinCrime::CLI.inputs
    else
      puts 'Not sure what you want. Please try again.'
    end
  end

  def self.harassment
    response = HTTParty.get("https://data.austintexas.gov/resource/rkrg-9tez.json?crime_type='HARASSMENT'")
    puts "Got #{response.count} results. Dumping first results:"
    response.first.each do |k, v|
      puts "#{k}: #{v}"
    end
    puts "enter 'more' if you'd like to browse more entries or 'menu' if you'd like to start over"
    input = gets.chomp
    if input == 'more'
      puts HTTParty.get("https://data.austintexas.gov/resource/rkrg-9tez.json?crime_type='HARASSMENT'")
      response.each do |k, v|
        puts "#{k}: #{v}"
      end
    elsif input == 'menu'
      AustinCrime::CLI.inputs
    else
      puts 'Not sure what you want. Please try again.'
    end
  end

  def self.cruelty
    response = HTTParty.get("https://data.austintexas.gov/resource/rkrg-9tez.json?crime_type='CRUELTY TO ANIMALS'")
    puts "Got #{response.count} results. Dumping first results:"
    response.first.each do |k, v|
      puts "#{k}: #{v}"
    end
    puts "enter 'more' if you'd like to browse more entries or 'menu' if you'd like to start over"
    input = gets.chomp
    if input == 'more'
      puts HTTParty.get("https://data.austintexas.gov/resource/rkrg-9tez.json?crime_type='CRUELTY TO ANIMALS'")
      response.each do |k, v|
        puts "#{k}: #{v}"
      end
    elsif input == 'menu'
      AustinCrime::CLI.inputs
    else
      puts 'Not sure what you want. Please try again.'
    end
  end

  def self.theft
    response = HTTParty.get("https://data.austintexas.gov/resource/rkrg-9tez.json?crime_type='THEFT'")
    puts "Got #{response.count} results. Dumping first results:"
    response.first.each do |k, v|
      puts "#{k}: #{v}"
    end
    puts "enter 'more' if you'd like to browse more entries or 'menu' if you'd like to start over"
    input = gets.chomp
    if input == 'more'
      puts HTTParty.get("https://data.austintexas.gov/resource/rkrg-9tez.json?crime_type='THEFT'")
      response.each do |k, v|
        puts "#{k}: #{v}"
      end
    elsif input == 'menu'
      AustinCrime::CLI.inputs
    else
      puts 'Not sure what you want. Please try again.'
    end
  end

  # def self.incident
  #   puts "\nPlease enter an Incident Report Number for more info"
  #   number = ""
  #   response =     HTTParty.get("https://data.austintexas.gov/resource/rkrg-9tez.json?incident_report_number='#{number}")
  # end
end
