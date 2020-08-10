require 'open-uri'
class ScrapLogic
  def initialize(url)
    @url = url
    @item_arr = []
    main_logic
  end

  def main_logic
    @doc = Nokogiri::HTML(open(@url))
    @result_item = @doc.css('div.card-content')
    @result_item.each do |result|
      @item = {
        title: result.css('h5').text,
        author: result.css('span.course-author').text,
        score: result.css('span.score').text,
        price: result.css('div.price').text
      }
      @item_arr << @item
    end
    p @item_arr
  end
end
