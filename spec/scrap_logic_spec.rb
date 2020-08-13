require_relative '../lib/scrape_logic'
require_relative '../lib/messages'
require_relative '../mock-tests/parsed.html'

describe ScrapeLogic do
  let(:empty_link) { 'https://www.bitdegree.org/search?q=asdfghjkl&src=ukw' }
  let(:last_page) { 'https://www.bitdegree.org/search?q=ruby&src=ukw' }
  let(:results_page) { 'https://www.bitdegree.org/search?q=ruby&src=ukw' }

  describe '#link_checker' do
    it "returns false if the search page doesn't throw any results" do
      scrap_logic = ScrapeLogic.new(empty_link)
      no_results = scrap_logic.no_results
      ind = scrap_logic.i
      expect(scrap_logic.link_checker(no_results, ind)).to eql(false)
    end
  end
end
