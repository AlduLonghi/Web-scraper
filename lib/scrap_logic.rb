require 'open-uri'
require 'nokogiri'

class ScrapLogic
  def initialize(url)
    @url = url
    @item_arr = []
    looping_through
  end

  def looping_through
    i = 1

    loop do
      @doc = Nokogiri::HTML(open(@url + "&page=#{i}#"))
      @result_item = @doc.css('div.card.course-card')
      @no_results = @doc.at('p:contains("Sorry, no courses matched your criteria.")')
      break if @no_results != nil
      storing_data
      i += 1
    end

    p @item_arr[2]
  end

  def storing_data
    @result_item.each do |result|
      @item = {
        title: result.css('h5').text,
        author: result.css('span.course-author').text,
        score: result.css('span.score').text,
        price: result.css('div.price' || 'span.course-price--free').text
      }
      @item_arr << @item
    end
    
  end
end
