#!/usr/bin/env ruby
require_relative '../lib/scrap_logic'
require_relative '../lib/messages'
require_relative '../lib/display'

class ScrapUI
  include Messages
  def initialize
    Messages.welcome
    link_input
    file_name
    scrap = ScrapLogic.new(@url)
    scrap_data = scrap.item_arr
    Display.new(scrap_data, @file_n) unless scrap_data.empty?
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

ScrapUI.new
