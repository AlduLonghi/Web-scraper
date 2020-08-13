require_relative '../lib/scrape_logic'
require_relative '../lib/messages'

describe ScrapeLogic do
  let(:file) { File.read('./spec/mock-tests/parsed.html') }
  let(:doc) { Nokogiri::HTML(file) }
  let(:no_results) { doc.at('p:contains("Sorry, no courses matched your criteria.")') }
  let(:scrape) { ScrapeLogic.new('') }
  
  describe '#link_checker?' do
    it "returns nil if the search page throw results" do
      ind = 1
      expect(scrape.send(:link_checker?, no_results, ind)).to eql(nil)
    end
  end
end
