require 'open-uri'
require 'nokogiri'
require_relative '../lib/practice'

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

    Table.new(@item_arr)
  end

  def storing_data
    @result_item.each do |result|
      @item = [
        result.css('h5').text,
        result.css('span.course-author').text,
        result.css('span.score').text,
        result.css('div.price').text.gsub!(/\s+/, "").slice!(0..3)
    ]
      @item_arr << @item
    end
    
  end
end
