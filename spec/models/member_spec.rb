require 'rails_helper'

describe Member do
  it 'exists' do
    attributes = {
      name: 'Afiko',
      photoUrl: 'https://vignette.wikia.nocookie.net/avatar/images/a/ad/Azula_%28games%29.png/revision/latest?cb=20131228015042',
      allies: 'Fire Nation',
      enemies: 'Water Tribes',
      affiliation: 'Fire Nation'
    }

    member = Member.new(attributes)

    expect(member).to be_a Member
    expect(member.name).to eq('Afiko')
    expect(member.photo_url).to eq('https://vignette.wikia.nocookie.net/avatar/images/a/ad/Azula_%28games%29.png/revision/latest?cb=20131228015042')
    expect(member.allies).to eq('Fire Nation')
    expect(member.enemies).to eq('Water Tribes')
    expect(member.affiliation).to eq('Fire Nation')
  end
end
