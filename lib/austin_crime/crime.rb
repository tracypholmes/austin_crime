class AustinCrime::Crime
  attr_accessor :type, :date, :increp, :url
  def self.all
    # I should return a bunch of instances of Crime
    puts <<-DOC
    1. Assault data.
    2. Burglary data.
    3. Crash data.
    4. DWI data.
    5. Indecent Exposure data.
    DOC
    crime_1 = self.new
    crime_1.type = "THEFT"
    crime_1.date = "2016-02-06"
    crime_1.increp = "20165005327"
    crime_1.url = "https://data.austintexas.gov/resource/rkrg-9tez.json"

    [crime_1]

  end


end
