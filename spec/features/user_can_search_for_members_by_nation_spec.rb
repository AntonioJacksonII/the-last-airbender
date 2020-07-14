require 'rails_helper'


feature 'user can search for members by nation' do
    scenario 'user selects a nation from the dropdown' do
    # As a user
    # When I visit "/"
    visit '/'

    select 'Fire Nation', from: :nation
    # And I Select "Fire Nation" from the select field
    click_on 'Search For Members'
    # And I click "Search For Members“
    expect(current_path).to eq(search_path)
    # Then I should be on page “/search”
    expect(page).to have_content('20 Members')
    # Then I should see the total number of people who live in the Fire Nation. (i.e. 20)
    expect(page).to have_css('.member', count: 20)
    # And I should see a list with the detailed information for the 20 members of the Fire Nation.

    within(first('.member')) do
      # And for each of the members I should see:
      expect(page).to have_css('.name')
      # - The name of the member
      expect(page).to have_css('.photo')
      # (and their photo, if they have one)
      expect(page).to have_css('.allies')
      # - The list of allies
      expect(page).to have_css('.enemies')
      # and a list of enemies
      expect(page).to have_css('.affiliation')
      # - Any affiliation that the member has
    end
  end
end
