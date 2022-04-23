require "nokogiri"

# html_doc = Nokogiri::XML(File.open("nokogiri/shows.xml"))

# 1. using search (best used on nodes appearenlty)
html_doc = Nokogiri::HTML(File.open("nokogiri/shows.xml"))

html_doc.search("character").each do |element|
  puts element.text
end

# 3. use xpath or css
# is_array = html_doc.xpath("//character").collect(&:text)
# print is_array
