require 'rails_helper'

describe LastAirbenderService do
  context 'instance methods' do
    context '#members_by_nation' do
      it 'returns member info' do
        service = LastAirbenderService.new
        search = service.members_by_nation('fire+nation')
        expect(search).to be_an Array
        member_data = search.first

        expect(member_data).to have_key :name
        expect(member_data).to have_key :photoUrl
        expect(member_data).to have_key :allies
        expect(member_data).to have_key :enemies
        expect(member_data).to have_key :affiliation
      end
    end
  end
end
