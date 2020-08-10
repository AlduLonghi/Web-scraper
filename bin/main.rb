#!/usr/bin/env ruby
require_relative '../lib/scrap_logic'

class ScrapUI
  def initialize
    puts 'Please, enter the url you want to scrap from: '
    url = gets.chomp
    ScrapLogic.new(url)
  end
end

ScrapUI.new
