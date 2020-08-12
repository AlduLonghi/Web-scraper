# rubocop:disable Security/Open
require 'open-uri'
require 'nokogiri'

class ScrapLogic
  attr_reader :item_arr, :no_results, :i
  def initialize(url)
    @url = url
    looping_through
  end

  def looping_through
    @i = 1
    @item_arr = []
    loop do
      @doc = Nokogiri::HTML(open(@url + "&page=#{@i}#"))
      @result_item = @doc.css('div.card.course-card')
      @no_results = @doc.at('p:contains("Sorry, no courses matched your criteria.")')
      break if link_checker(@no_results, @i) == false

      storing_data
      @i += 1
    end
  end

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

  def link_checker(no_results, ind)
    if !no_results.nil? && ind == 1
      puts ''
      puts Messages::NO_RESULTS
      puts ''
      false
    elsif !no_results.nil?
      false
    end
  end
end

# rubocop:enable Security/Open
