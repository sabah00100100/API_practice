require "open-uri"
require "nokogiri"

url = "https://www.allrecipes.com/search/results/?search=chocolate"

html_file = URI.open(url).read
html_doc = Nokogiri::HTML(html_file)

recepes = []

html_doc.search(".card__recipe").each do |element|
  recepes << element.search(".card__imageContainer a").first.attribute("title").value.strip
  # recepes << element.search(".card__imageContainer a").first.attribute("href").value.strip
end
print recepes

# .first.attribute("title").value.strip
