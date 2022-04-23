require "csv"

filepath = "nokogiri/beatles.csv"

CSV.open(filepath, "wb") do |csv|
  csv << ["First Name", "Last Name", "Instrument"]
  csv << ["John", "Lennon", "Guitar"]
  csv << ["Paul", "McCartney", "Bass Guitar"]
end

# parsing without taking off headers
# CSV.foreach(filepath) do |row|
#   puts "#{row[0]} #{row[1]} played #{row[2]}"
# end
