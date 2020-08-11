require 'terminal-table'

class Table
    def initialize(arr, file_n)
      @arr = arr
      @file_n = file_n
      i = 0
    
      @table = Terminal::Table.new(
        row: [],

        headings: [
          'Name',
          'Author',
          'Score',
          'Price'
        ]
       )

      @arr.length.times do
        @table.add_row(@arr[i])
        i += 1
      end
      puts ''
      puts @table
      puts ''
      create_file
end

  def create_file
    file = File.open(@file_n + '.txt', "w")
    file.puts @table
    file.close
  end

end

