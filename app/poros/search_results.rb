class SearchResults
  def members(nation)
    json = LastAirbenderService.new.members_by_nation(nation)
    @members = json.map do |member_info|
      Member.new(member_info)
    end
  end
end
