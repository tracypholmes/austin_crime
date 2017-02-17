class AustinCrime::Crime
  attr_accessor :type, :type_hash, :date, :increp, :url
  def self.all
    # scrape opendata - use API to return crime based on that data
    self.url
  end

  def self.url(type)
    url = "https://data.austintexas.gov/resource/rkrg-9tez.json?$where=starts_with(crime_type,'#{type}')"
    response = HTTParty.get(url)
    @type_hash = response.parsed_response
  end


end
