RSpec.describe User, type: :model  do

let!(:user) {FactoryGirl.create(:user) }
  
it { should respond_to(:name) }

  it "#name returns a string" do
    expect(user.name).to match 'Ringo Star'
  end

end
