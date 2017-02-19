How to Build a CLI Gem


    Planning the Gem
    Beginning the Gem building process
        Setting up or generating the basic structure of the Gem
        Creating and stubbing out the executable file
    requiring files - require and require_relative
    Coding the CLI Class - our Controller
        Stubbing out the CLI Class with hardcoded return data - here doc
        Creating the menu
    Setting up our Deal Class
        Today method to return todays deals
        stubbing out our first deal instances with hardcoded data
        setting up the deal class attributes
    Testing our data in console
    wire our menu with conditional to work with our deals array
        iterate and display deals
        fix spelling on availability
    Setting up our scraper class - Deal class method or individual class?
        set up Deals#scrape_deals method
    Adding gem dependencies to the app
        Add dependecies to gemspec
        development dependencies or regular dependencies
    code individual scrape methods for each site
        Use css selectors to scrape desired information
        create new deal object and set it's attributes based on scraped info
        logic for availability
    final thoughts and tips on building process


1. Plan your gem, imagine your interface
2. Start with the project structure - google is your friend
  a. Bundler - creating a gem guide
3. Start with the entry point - the file run
  a. remember `#!/usr/bin/env ruby`
4. force that to build the CLI interface
  a. Build the code you wish you had! start with ATXCrime::CLI.new.call in bin
5. stub out the interface
  a. build `call` class | cli.rb | class ATXCrime::CLI
6. start making things real
7. discover objects.
8. program


* Needed Gems: thor, pry, httparty, soda-ruby (instead of httparty?)
* OpenData Socrata How-To: https://dev.socrata.com/consumers/getting-started.html
* URL: https://data.austintexas.gov/Public-Safety/APD-Incident-Extract-YTD/b4y9-5x39
* About the Dataset: https://dev.socrata.com/foundry/data.austintexas.gov/rkrg-9tez
* API Endpoint: https://data.austintexas.gov/resource/rkrg-9tez.json

Fields  | Field Names    
------------ | ------------
Incident Report Number | incident_report_number
Crime Type | crime_type
Date | date
Time | time
LOCATION_TYPE | location_type
ADDRESS | address
LONGITUDE | longitude
LATITUDE | latitude
Location 1 | location_1

-------------
limit this to ONLY 5 crime types.
User can put in a number and get a list of the crimes
> so, basically, my crime types list is kinda like WIN_COMBINATIONS? Well no. I literally just need to add the list in the cli, then link it to the api for that specific type (sorry for talking at you, but you are usually very honest with me especially if i'm not on the right track lol)


  limit crimes to only 5



[21:38]  
the user puts in a number and gets a list of the crimes

- A command line interface for for residents to view crime reports.


### What is a crime?
  A crime has a crime type
  A crime has a date
  A crime has an incident report number


user types austin_crime

Welcome to AustinCrime!

1. DWI
2. HARASSMENT
3. CRUELTY TO ANIMALS
4. THEFT
5. CRIMINAL MISCHIEF

Please enter the number next to the crime type for more information:
https://data.austintexas.gov/resource/rkrg-9tez.json?$where=starts_with(crime_type,'#{type}')&$limit=10&$offset=0]

Ideally this would show a list of incident_report_number for the specific crime_type
https://data.austintexas.gov/resource/rkrg-9tez.json?crime_type=" "&$limit=5&$offset=5
# HOW DO I SHOW JUST THE DAMN IRN for crime_type?!
User selects which report number they want to find out more about.
Or user can type `more` to get more crimes in the list | or previous to see the previous list
