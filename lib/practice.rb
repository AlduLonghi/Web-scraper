require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open('https://www.bitdegree.org/tag/marketing'))
result = doc.at_css('div.course-card')
p doc.inner_html
