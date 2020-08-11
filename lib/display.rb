require 'terminal-table'

class Display
  def initialize(arr, file_n)
    @arr = arr
    @file_n = file_n
    output_of_data
    create_file
  end

  def output_of_data
    i = 0
    @table = Terminal::Table.new(
      row: [],

      headings: %w[
        Name
        Author
        Score
        Price
      ]
    )
    @arr.length.times do
      @table.add_row(@arr[i])
      i += 1
    end
    puts ''
    puts @table
    puts ''
  end

  def create_file
    file = File.open(@file_n + '.txt', 'w')
    file.puts @table
    file.close
  end
end
