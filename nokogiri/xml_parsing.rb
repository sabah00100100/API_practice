require "nokogiri"

# step 1: Open the .xml file
file = File.open("nokogiri/beatles.xml")

# step 2: Convert the .xml file in a Nokogiri::XML document
document  = Nokogiri::XML(file)

# step 3: You can iterate through elements of the Nokogiri::XML document
children = document.root.xpath("//beatles").children
# @block = doc.css("name").map { |node| node.children.text }
# puts @block

# didn't work with document.root.xpath("beatl.... because root gets root node of doc but this doc is small?

# document.root.xpath("beatle").each do |beatle|
#   first_name = beatle.xpath("first_name").text
#   last_name = beatle.xpath("last_name").text
#   instrument = beatle.xpath("instrument").text

#   puts "#{first_name} #{last_name} played #{instrument}"
# end
