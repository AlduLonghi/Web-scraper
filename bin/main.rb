#!/usr/bin/env ruby
require_relative '../lib/scrap_logic'

class ScrapUI
  def initialize
    link
  end

  def link
    loop do 
      puts 'Please, enter the url you want to scrap from: '
      @url = gets.chomp
      if @url.include? 'https://www.bitdegree.org/search?'
        file_name
        break
      else 
        puts "invalid link"
        next
      end
    end
  end

  def file_name
    puts 'Please, enter the name of the file which stores the info: '
      file_n = gets.chomp
end

ScrapUI.new
