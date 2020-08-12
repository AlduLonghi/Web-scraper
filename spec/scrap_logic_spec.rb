require_relative '../lib/scrap_logic'
require_relative '../lib/messages'

describe ScrapLogic do
  let(:empty_link) { 'https://www.bitdegree.org/search?q=asdfghjkl&src=ukw' }
  let(:last_page) { 'https://www.bitdegree.org/search?q=ruby&src=ukw' }
  let(:results_page) { 'https://www.bitdegree.org/search?q=ruby&src=ukw' }

  describe '#link_checker' do
    it "returns false if the search page doesn't throw any results" do
      scrap_logic = ScrapLogic.new(empty_link)
      no_results = scrap_logic.no_results
      ind = scrap_logic.i
      expect(scrap_logic.link_checker(no_results, ind)).to eql(false)
    end

    it 'returns false if the scraper reaches the last page of the results' do
      scrap_logic = ScrapLogic.new(last_page)
      no_results = scrap_logic.no_results
      ind = scrap_logic.i
      expect(scrap_logic.link_checker(no_results, ind)).to eql(false)
    end

    it 'returns nil if the search page throw results' do
      scrap_logic = ScrapLogic.new(results_page)
      no_results = nil
      ind = scrap_logic.i
      expect(scrap_logic.link_checker(no_results, ind)).to eql(nil)
    end

    it "doesn't return nil if the search page doesn't throw results" do
      scrap_logic = ScrapLogic.new(empty_link)
      no_results = scrap_logic.no_results
      ind = scrap_logic.i
      expect(scrap_logic.link_checker(no_results, ind)).not_to eql(nil)
    end
  end
end
