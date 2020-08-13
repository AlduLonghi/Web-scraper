require 'open-uri'
require 'nokogiri'

class ScrapeLogic
  attr_reader :item_arr, :no_results, :i

  def initialize(search_key)
    @search_key = search_key.gsub(/\s+/, '+')
  end

  def looping_through
    @i = 1
    @item_arr = []
    loop do
      @doc = Nokogiri::HTML(URI.parse("https://www.bitdegree.org/search?q=#{@search_key}&src=ukw&page=#{@i}#").open)
      @result_item = @doc.css('div.card.course-card')
      @no_results = @doc.at('p:contains("Sorry, no courses matched your criteria.")')
      break if link_checker?(@no_results, @i) == false

      storing_data
      @i += 1
    end
  end

  private

  def storing_data
    @result_item.each do |result|
      price = result.css('div.price')
      result_price = price.empty? ? 'unknown' : price.text.gsub!(/\s+/, '').slice!(0..3)
      @item = [
        result.css('h5').text,
        result.css('span.course-author').text,
        result.css('span.score').text.gsub!(/\s+/, ''),
        result_price,
        result.css('a').attribute('href').value
      ]
      @item_arr << @item
    end
  end

  def link_checker?(no_results, ind)
    if !no_results.nil? && ind == 1
      false
    elsif !no_results.nil?
      false
    end
  end
end
