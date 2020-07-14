class SearchController < ApplicationController
  def index
    nation = params[:nation].gsub('_','+')
    conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
    response = conn.get("/api/v1/characters?affiliation=#{nation}")
    json = JSON.parse(response.body, symbolize_names: true)
    @members = json.map do |member_info|
      Member.new(member_info)
    end
  end
end
