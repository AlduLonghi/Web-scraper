require 'terminal-table'
require_relative 'messages.rb'

class Display
  include Messages
  def initialize(arr, file_n)
    @arr = arr
    @file_n = file_n
    output_of_data
    create_file
  end
  
  private
  
  def output_of_data
    i = 0
    @table = Terminal::Table.new(
      row: [],

      headings: %w[Title Author Score Price Link]
    )
    @arr.length.times do
      @table.add_row(@arr[i])
      i += 1
    end
  end

  def create_file
    file = File.open("#{@file_n}.txt", 'w')
    file.puts @table
    file.close
  end
end
