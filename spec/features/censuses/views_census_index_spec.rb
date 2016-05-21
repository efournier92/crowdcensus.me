require 'rails_helper'

feature 'user views census index page' do
  let!(:census) { FactoryGirl.create(:census) }
	let!(:user) { FactoryGirl.create(:user) }
	
  scenario 'displays static content' do
		login_as(user, scope: :user)
    visit root_path
		expect(page).to have_button('Cast Opinion')
  end

  scenario 'displays dynamic content' do
    visit root_path

    expect(page).to have_content('Meat Loaf')
  end
end
