module Messages
  def self.welcome
    puts ''
    puts '****************************************************'
    puts ''
    puts '   WELCOME TO YOUR BITDEGREE SEARCH-PAGE SCRAPER'
    puts ''
    puts '****************************************************'
    puts ''
  end

  def self.no_results
    puts ''
    puts 'It seems your page has no results!'
    puts ''
  end

  def self.file_ready(arr)
    i = 0
    arr.length.times do
      puts ''
      puts "#{i + 1}."
      puts arr[i]
      puts ''
      puts 'Your file is ready and stored in this directory.'
      puts ''
      i += 1
    end
  end

  LINK_MG = 'Please enter the keyword of what you would like to search (e.g. \'ruby\') '.freeze

  FILE_NAME = 'Please, enter the name of the file which stores the info (e.g. \'ruby-data\'): '.freeze

  INVALID_FILE_NAME = 'It seems you haven\'t entered any file name. Please, try again.'.freeze
end
