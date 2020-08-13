require_relative '../lib/scrape_logic'
require_relative '../lib/messages'

describe ScrapeLogic do
  let(:scrape) { ScrapeLogic.new('ruby') }
  let(:arr) do
    [['Learn Ruby on Rails and Find Out How to Make Web Applications Quickly', 'LearnToProgram', '4.7', '$4.9',
      'https://www.bitdegree.org/course/learn-ruby-on-rails'],
     ['The Complete Ruby on Rails 6 Web Development Course 2020: Build an Advanced Udemy Clone', 'Yaroslav Shmarov',
      '5.0', '$13.', 'https://www.bitdegree.org/course/building-advanced-web-applications-with-ruby-on-rails'],
     ['Complete Golang Tutorial: From the Basics to Advanced Features', 'Naga Rakesh Chinta', '1.0', '$9.9',
      'https://www.bitdegree.org/course/golang-tutorial'],
     ['Java for Dummies: Learn Java Programming Basics', 'IT Room', '2.3', '$9.9',
      'https://www.bitdegree.org/course/java-for-dummies'],
     ['Practical Xcode Tutorial: Learn the Basics of Swift and How to Use Xcode IDE', 'Mammoth Interactive',
      '5.0', '$15.', 'https://www.bitdegree.org/course/xcode-tutorial'],
     ['Learn Selenium Automation', 'Vineela Madarapu', '5.0', '$9.9',
      'https://www.bitdegree.org/course/learn-selenium'],
     ['The Complete Regular Expression Tutorial: Turn Your Efficiency Mode On', 'Jazeb Akram', '5.0',
      '$170', 'https://www.bitdegree.org/course/regular-expression-tutorial'],
     ['GraphQL tutorial for beginners: learn to builds your own GraphQL API with JavaScript', 'Xavier Decuyper',
      '5.0', '$9.9', 'https://www.bitdegree.org/course/graphql-tutorial'],
     ['Learn PHP Basics in Under 2 Hours', 'Ahmed Ibrahim', '4.9', '$4.5',
      'https://www.bitdegree.org/course/php-basics'],
     ['Automate Everything using Sikuli', 'Nitin Tyagi', '5.0', '$10.',
      'https://www.bitdegree.org/course/automate-everything-using-sikuli']]
  end

  describe '#looping_through' do
    it 'returns an array with the collected data if the page throws results' do
      expect(scrape.looping_through).to eql(arr)
    end
  end
end
