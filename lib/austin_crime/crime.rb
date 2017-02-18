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
    response = HTTParty.get("https://data.austintexas.gov/resource/rkrg-9tez.json?crime_type='DWI'&$limit=10&$offset=0")
  end


end
