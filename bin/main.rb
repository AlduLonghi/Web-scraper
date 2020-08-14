#!/usr/bin/env ruby
require_relative '../lib/scrape_logic'
require_relative '../lib/messages'
require_relative '../lib/display'

def scrape_performance
  Messages.welcome
  key = search_key_input
  file_name = file_naming
  scrape = ScrapeLogic.new(key)
  scrape_data = scrape.looping_through
  if scrape_data.empty?
    Messages.no_results
  else
    Messages.file_ready(scrape_data)
    Display.new(scrape_data, file_name)
  end
end

def search_key_input
  puts Messages::LINK_MG
  gets.chomp
end

def file_naming
  puts ''
  puts Messages::FILE_NAME
  file_n = ''
  loop do
    input_n = gets.chomp
    file_n = input_n
    break unless input_n.empty?

    puts Messages::INVALID_FILE_NAME
  end
  file_n
end

scrape_performance
