require 'rails_helper'

feature 'user views own profile page' do
  let!(:user) { FactoryGirl.create(:user) }
  let!(:census) { FactoryGirl.create(:census, user_id: user.id) }
  scenario 'accesses profile page from home' do
		login_as(user, scope: :user)
		visit root_path
		click_on('Profile')
		
    expect(page).to have_content(user.name)
  end
end


