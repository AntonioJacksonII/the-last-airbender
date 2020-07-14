class Member
  attr_reader :name,
              :photo_url,
              :allies,
              :enemies,
              :affiliation
              
  def initialize(member_info)
    @name = member_info[:name]
    @photo_url = member_info[:photoUrl]
    @allies = member_info[:allies]
    @enemies = member_info[:enemies]
    @affiliation = member_info[:affiliation]
  end
end
