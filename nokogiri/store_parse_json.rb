require "json"

beatles = { beatles: [
  {
    first_name: "John",
    last_name: "Lennon",
    instrument: "Guitar"
  },
  {
    first_name: "Paul",
    last_name: "McCartney",
    instrument: "idk"
  },
  # [...]
]}

File.open('nokogiri/beatles.json', "wb") do |file|
  file.write(JSON.generate(beatles))
end

# parsing json file

# filepath = "nokogiri/beatles.json"

# serialized_beatles = File.read(filepath)

# beatles = JSON.parse(serialized_beatles)

# print  beatles["beatles"].first["first_name"] => prints "John"
# i don't know why getting value by using symbol syntax for keys doesn't work
