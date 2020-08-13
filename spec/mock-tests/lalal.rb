require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(URI.parse("https://www.bitdegree.org/search?q=ruby&src=ukw&page=1#").open)
File.write("parsed.html", doc, mode: "a")

