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
    response = HTTParty.get("https://data.austintexas.gov/resource/rkrg-9tez.json?crime_type='DWI'")
    puts "Got #{response.count} results. Dumping first results:"
    response.first.each do |k, v|
      puts "#{k}: #{v}"
    end
  end

  def self.harassment
    response = HTTParty.get("https://data.austintexas.gov/resource/rkrg-9tez.json?crime_type='HARASSMENT'")

  end

  def self.cruelty
    response = HTTParty.get("https://data.austintexas.gov/resource/rkrg-9tez.json?crime_type='CRUELTY TO ANIMALS'")
  end

  def self.theft
    response = HTTParty.get("https://data.austintexas.gov/resource/rkrg-9tez.json?crime_type='THEFT'")
  end

  # def self.incident
  #   puts "\nPlease enter an Incident Report Number for more info"
  #   number = ""
  #   response =     HTTParty.get("https://data.austintexas.gov/resource/rkrg-9tez.json?incident_report_number='#{number}")
  # end
end
