class LastAirbenderService

  def conn
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
  end

  def members_by_nation(nation)
    response = conn.get("/api/v1/characters?affiliation=#{nation}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
