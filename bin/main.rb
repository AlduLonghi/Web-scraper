#!/usr/bin/env ruby
require_relative '../lib/scrape_logic'
require_relative '../lib/messages'
require_relative '../lib/display'

  include Messages
  def scrape_performance
    Messages.welcome
    key = search_key_input
    file_n = file_name
    scrape = ScrapeLogic.new(key)
    scrape_data = scrape.item_arr
    Display.new(scrape_data, file_n) unless scrape_data.empty?
  end

  def search_key_input
    puts Messages::LINK_MG
    search_key = gets.chomp
  end

  def file_name
    puts ''
    puts Messages::FILE_NAME
    file_n = gets.chomp
  end

scrape_performance
