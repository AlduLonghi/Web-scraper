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

  LINK_MG = 'Please, enter the url you want to scrap from: '.freeze

  INVALID_LINK = 'You have entered an invalid link. Please try again.'.freeze

  FILE_NAME = 'Please, enter the name of the file which stores the info (e.g. \'ruby-data\'): '.freeze

  INVALID_FILE_NAME = 'It seems you haven\'t entered any file name. Please, try again.'.freeze

  NO_RESULTS = 'It seems your page has no results!'.freeze
end
