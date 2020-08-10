require 'open-uri'
require 'nokogiri'

class ScrapLogic
  def initialize(url)
    @url = url
    @item_arr = []
    main_logic
  end

  def main_logic
    i = 1
    loop do
    @doc = Nokogiri::HTML(open(@url + "&page=#{i}#"))
    @result_item = @doc.css('div.course-card')
    @no_results = @doc.at('p:contains("Sorry, no courses matched your criteria. Try different terms or see our categories.")')
    @items_count = @result_item.count
    break if @no_results != nil
    @result_item.each do |result|
      @item = {
        title: result.css('h5').text,
        author: result.css('span.course-author').text,
        score: result.css('span.score').text,
      }
      @item_arr << @item
    end
    i += 1
  end
    p @item_arr
  end
end
