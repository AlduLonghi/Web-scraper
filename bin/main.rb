require 'open-uri'
require 'nokogiri'




puts "please enter the url"
url = gets.chomp()
i = 20
page = "&page=#{i}#"
doc = Nokogiri::HTML(open(url))
result_card = doc.css('div.card-content')
error = doc.at('p:contains("lalala.")')
p url + page
