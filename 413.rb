# QUESTION 1
# The following code uses the geocoder Ruby library.
# First read the library documentation: https://github.com/alexreisner/geocoder 
# Then write comments next to each line explaining what you think the code is doing.
require "geocoder"                                   # The library isn't built-in to Ruby, and needs to be installed/accessed somehow and then called upon before it can be used.

addresses = [                                        # This is an array of addresses to run a search on. geocoder can take an address string with a street, city, state and country, each separated by a comma.
  "1600 Amphitheatre Parkway, Mountain View, CA",
  "1 Infinite Loop, Cupertino, CA",
  "350 5th Ave, New York, NY",
]

addresses.each do |address|                          # For each address,
  result = Geocoder.search(address).first            # run a basic search to find it. I believe ".first" returns the first result out of a potential list of matches. the library can take an address or coordinates.
  if result                                          # if a result is found and doesn't return nil or false,
    latitude = result.latitude                       # it should have latitude and logitude attributes, among others. put latitude to a variable,
    longitude = result.longitude                     # and logitude.
    
    puts "Address: #{address}"                       # print the address, and coordinates.
    puts "Latitude: #{latitude}"
    puts "Longitude: #{longitude}"
    puts "---"
  else
    puts "Unable to geocode address: #{address}"     # if a geocode search didn't work with the input, give an error message.
  end
end
