require "json"
require "open-uri"
# ?escape=javascript
api_url = "http://api.icndb.com/jokes/random"

URI.open(api_url) do |stream|
  quote = JSON.parse(stream.read)
  # check json file in json formatter to know what value to take
  puts quote["value"]["joke"]
end
