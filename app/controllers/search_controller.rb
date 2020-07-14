class SearchController < ApplicationController
  def index
    nation = params[:nation].gsub('_','+')
  end
end
