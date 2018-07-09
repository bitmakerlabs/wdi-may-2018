require 'httparty'

response = HTTParty.get("http://localhost:3000/monsters.json")

response_string = response.body
monsters = JSON.parse(response_string)
#puts json_data.class
#puts json_data[0].class
#puts json_data[0]["home"]

# total_creepiness = 0
# monsters.each do |monster|
#   total_creepiness += monster["creepiness"]
# end
# puts total_creepiness

total_creepiness = monsters.reduce(0) do |sum, monster|
  sum += monster["creepiness"]
end
puts total_creepiness
