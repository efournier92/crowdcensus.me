require 'rails_helper'

feature 'user adds census' do
  let!(:census) { FactoryGirl.create(:census) }
  let!(:user)   { FactoryGirl.create(:user) }
  scenario 'accesses new census page from home' do
    visit root_path
    click_link('New Census')

    expect(page).to have_content('Poll Crowdcensus')
  end

  scenario 'creates a new census' do
    login_as(user, :scope => :user)
    visit new_census_path
    fill_in(:census_description, with: 'Should I Enroll in a Coding Bootcamp?')
    fill_in(:census_option_01,   with: 'Definately')
    fill_in(:census_option_02,   with: 'No')
    select('24 Hours', from: 'Duration')
    click_button('Poll Crowdcensus')
    expect(page).to have_content('Census Created!')
  end

  scenario 'sees error message if required fields not filled' do

  end

end
