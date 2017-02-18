require 'httparty'
require 'pry'

class AustinCrime::Crime
  attr_accessor :type, :type_hash, :date, :increp, :url
  def self.all
    # scrape opendata - use API to return crime based on that data
    self.url
  end

  def self.url
    response = HTTParty.get('https://data.austintexas.gov/resource/rkrg-9tez.json')
    puts response.body
  end


end
