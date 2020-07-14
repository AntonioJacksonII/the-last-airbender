class SearchController < ApplicationController
  def index
    nation = params[:nation].gsub('_','+')
    conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
    response = conn.get("/api/v1/characters?affiliation=#{nation}")
    @members = JSON.parse(response.body, symbolize_names: true)
  end
end
