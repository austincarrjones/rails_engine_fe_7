class SearchFacade
  def initialize()
  end

  def search(searchword)
    search_results = SearchService.new.search(searchword)
      Merchant.new(search_results)
  end
end