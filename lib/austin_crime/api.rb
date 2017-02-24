class AustinCrime::Api
  def initialize; end

  BASE_URL = 'https://data.austintexas.gov/resource/rkrg-9tez.json?$where=starts_with(crime_type,'

  def self.dwi_api
    response = HTTParty.get(BASE_URL + "'DWI')&$limit=10")
    response.each do |crime|
      address = crime["address"]
      date = crime["date"]
      number = crime["incident_report_number"]
      AustinCrime::Crime.new(address, date, number)
        end
    end
  end
