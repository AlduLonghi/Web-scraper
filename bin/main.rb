#!/usr/bin/env ruby
require_relative '../lib/scrap_logic'

class ScrapUI
  def initialize
    link
  end

  def link
    puts 'Please, enter the url you want to scrap from: '
    loop do 
      @url = gets.chomp
      if @url.include? 'https://www.bitdegree.org/search?'
        file_name
        break
      else 
        puts "You have entered an invalid link. Please try again"
        next
      end
    end
  end

  def file_name
    puts 'Please, enter the name of the file which stores the info (e.g. \'ruby-data\'): '
    loop do
      file_n = gets.chomp
      if file_n == nil
        puts 'It seems you haven\'t entered any file name. Please, try again'
        next
      else
        ScrapLogic.new(@url, file_n)
        break
      end
    end
  end
end

ScrapUI.new
