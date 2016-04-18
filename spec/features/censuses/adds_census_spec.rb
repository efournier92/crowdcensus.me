require 'rails_helper'

feature 'user adds census' do
  scenario 'accesses new census page from home' do
    visit root_path
    click_link('New Census')

    expect(page).to have_content('Poll Crowdcensus')
  end

  scenario 'creates a new census' do
    user = FactoryGirl.create(:user)
    binding.pry
    visit new_census_path
    fill_in(:census_description, with: 'Who would make the best president?')
    fill_in(:census_option_01, with: 'Gary Busey')
    fill_in(:census_option_02, with: 'Donald Trump')
    fill_in(:census_option_03, with: 'Meat Loaf')
    click_button('Poll Crowdcensus')

    expect(page).to have_content('Census Created!')
  end
end
