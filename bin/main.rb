#!/usr/bin/env ruby
require_relative '../lib/scrap_logic'
require_relative '../lib/messages'

class ScrapUI
  include Messages
  def initialize
    Messages.welcome
    link
  end

  def link
    puts Messages::LINK_MG
    loop do
      @url = gets.chomp
      if @url.include? 'https://www.bitdegree.org/search?'
        file_name
        break
      else
        puts ''
        puts Messages::INVALID_LINK
        next
      end
    end
  end

  def file_name
    puts ''
    puts Messages::FILE_NAME
    loop do
      file_n = gets.chomp
      if file_n.empty?
        puts ''
        puts Messages::INVALID_FILE_NAME
        next
      else
        ScrapLogic.new(@url, file_n)
        break
      end
    end
  end
end

ScrapUI.new
