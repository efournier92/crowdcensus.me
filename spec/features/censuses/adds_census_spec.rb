require 'rails_helper'

feature 'user adds census' do
  scenario 'accesses new census page from home' do
    visit root_path
    click_link('New Census')

    expect(page).to have_content('Poll Crowdcensus')
  end
end
