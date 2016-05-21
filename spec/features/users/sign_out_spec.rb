feature 'Sign out', :devise do
	scenario 'user signs out successfully' do
		user = FactoryGirl.create(:user)
		login_as(user, scope: :user)
		visit root_path
		click_on('Log Out')
	end
end
