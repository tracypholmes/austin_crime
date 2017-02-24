require 'httparty'
require 'pry'
# this is the core of my scraper - json lives here
class AustinCrime::Crime
  attr_accessor :address, :date, :incident_report_number

  @@all = []

  def initialize(address, date, number)
    @address = address
    @date = date
    @incident_report_number = number
    @@all << self
    # @response = response
  end

  def self.all
    @@all
  end

  def self.clear
    #reset @@all to empty array
  end
  def self.url
    url = 'https://data.austintexas.gov/resource/rkrg-9tez.json?$where=starts_with(crime_type,'
  end

  def self.dwi
    @response = HTTParty.get(url + "'DWI')&$limit=10")
    binding.pry
    yeesh
  end

  def self.harassment
    @response = HTTParty.get(url + "'HARASSMENT')&$limit=10")
    yeesh
  end

  def self.cruelty
    @response = HTTParty.get(url + "'CRUELTY TO ANIMALS')&$limit=10")
    yeesh
  end

  def self.theft
    @response = HTTParty.get(url + "'THEFT')&$limit=10")
    yeesh
  end

  def self.yeesh
    puts "Got #{@response.count} results. Showing first result:"
    @response.first.each do |k, v|
      puts "#{k}: #{v}"
    end
    puts "\nEnter 'more' if you'd like to browse more entries or 'q' if you'd like Quit"
    input = gets.chomp
    if input == 'more'
      @response.collect do |hash|
        puts '--------------------'
        hash.collect do |k, v| # not supposed to use collect on hashes?
          puts "#{k}: #{v}"
        end.compact.reject(&:empty?) # c_cole on the assist
      end
    elsif input == 'q'
      puts "But you just got here! Thanks for viewing."
      abort
    else
      puts 'Not sure what you want. Please try again.'
    end
  end
end
