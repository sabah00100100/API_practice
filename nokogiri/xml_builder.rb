require "nokogiri"

filepath  = "beatles.xml"
builder   = Nokogiri::XML::Builder.new(encoding: "UTF-8") do
  beatles do
    title "The Beatles"
    beatle do
      first_name "John"
      last_name  "Lennon"
      instrument "Guitar"
    end
  end
end

File.open(filepath, "w") { |file| file.write(builder.to_xml) }

filer  = "family.xml"
builder   = Nokogiri::XML::Builder.new do
  beatles do
    title "Family"
    beatle do
      mom "John"
      dad  "Lennon"
      first "Guitar"
    end
  end
end

File.open(filer, "w") { |file| file.write(builder.to_xml) }

# builder = Nokogiri::XML::Builder.new do |xml|
#   xml.root {
#     xml.products {
#       xml.widget {
#         xml.id_ "10"
#         xml.name "Awesome widget"
#       }
#     }
#   }
# end
# puts builder.to_xml
