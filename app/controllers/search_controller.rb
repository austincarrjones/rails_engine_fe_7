class SearchController < ApplicationController
  def index
    # binding.pry
    if params[:search]
      @search_results = SearchFacade.new.search(params[:search])
    else
    end
  end
end