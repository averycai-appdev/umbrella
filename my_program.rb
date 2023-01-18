p "Where are you?"

user_location = gets.chomp

p user_location

gmaps_key = ENV.fetch("GMAPS_KEY")

gmaps_url="https://maps.googleapis.com/maps/api/geocode/json?address=#{user_location}&key=#{gmaps_key}"

require("open-uri")

raw_data= URI.open(gmaps_url).read

require("JSON")

parsed_data = JSON.parse(raw_data)


p parsed_data.class

results_array = parsed_data.fetch("results")

first_result=results_array.at(0)

geo_hash = first_result.fetch("geometry")

loc_hash = geo_hash.fetch("location")

latitude = location_hash.fetch("lat")

longitude = location_hash.fetch("lng")

