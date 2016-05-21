require 'rails_helper'

feature 'user views census index page' do
  let!(:census) { FactoryGirl.create(:census) }
	let!(:user) { FactoryGirl.create(:user) }
	
  scenario 'displays static content' do
		login_as(user)
    visit root_path 
    expect(page).to have_button('Cast Opinion')
    expect(page).to have_content('Posted By:')
    expect(page).to have_content('For:')
  end

  scenario 'displays dynamic content' do
    visit censuses_path

    expect(page).to have_content('Ringo')
  end
end
