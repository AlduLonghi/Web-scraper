require 'terminal-table'

class Table
    def initialize(arr)
      @arr = arr
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
    file = File.open("file.txt", "w")
    file.puts @table
    file.close
  end

end

