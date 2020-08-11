require 'open-uri'
require 'nokogiri'
require_relative '../lib/display'

class ScrapLogic
  def initialize(url, file_n)
    @url = url
    @file_n = file_n
    looping_through
  end

  def looping_through
    i = 1
    @item_arr = []
    loop do
      @doc = Nokogiri::HTML(open(@url + "&page=#{i}#"))
      @result_item = @doc.css('div.card.course-card')
      @no_results = @doc.at('p:contains("Sorry, no courses matched your criteria.")')
      break if @no_results != nil
      storing_data
      i += 1
    end
    Table.new(@item_arr, @file_n)
  end

  def storing_data
    @result_item.each do |result|
      result.css('div.price').empty? ? result_price = "unknown": result_price = result.css('div.price').text.gsub!(/\s+/, "").slice!(0..3)
      @item = [
        result.css('h5').text,
        result.css('span.course-author').text,
        result.css('span.score').text,
        result_price
      ]
      @item_arr << @item
    end
    
  end
end
