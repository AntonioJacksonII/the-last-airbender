class SearchController < ApplicationController
  def index
    search_results = SearchResults.new
    nation = params[:nation].gsub('_','+')
    @members = search_results.members(nation)
  end
end
