require 'rails_helper'

feature 'user votes on census' do
  let!(:census) { FactoryGirl.create(:census) }
  scenario 'succesfully casts opinion' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit root_path
    choose(census.option_03)
    click_button('Cast Opinion')

    expect(page).to have_content('Opinion Cast!')
  end
  # scenario 'submits without selecting an option' do
  #   visit census_path(census)
  #   click_button('Cast Opinion')
  #
  #   expect(page).to have_content('OOPS')
  #   expect(page).to have_content(census.description)
  # end

end
