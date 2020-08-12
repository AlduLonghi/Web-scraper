#!/usr/bin/env ruby
require_relative '../lib/scrape_logic'
require_relative '../lib/messages'
require_relative '../lib/display'

class ScrapeUI
  include Messages
  def initialize
    Messages.welcome
    link_input
    file_name
    scrape = ScrapeLogic.new(@url)
    scrape_data = scrape.item_arr
    Display.new(scrape_data, @file_n) unless scrape_data.empty?
  end

  def link_input
    puts Messages::LINK_MG
    loop do
      @url = gets.chomp
      break if @url.include? 'https://www.bitdegree.org/search?'

      puts ''
      puts Messages::INVALID_LINK
    end
  end

  def file_name
    puts ''
    puts Messages::FILE_NAME
    loop do
      @file_n = gets.chomp
      break unless @file_n.empty?

      puts ''
      puts Messages::INVALID_FILE_NAME
    end
  end
end

ScrapeUI.new
