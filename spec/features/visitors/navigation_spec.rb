feature 'Navigation links', :devise do
  scenario 'view navigation links' do
    visit root_path
    expect(page).to have_content 'CrowdCensus'
    expect(page).to have_content 'Log In'
  end
end
