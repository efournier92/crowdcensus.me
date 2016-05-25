RSpec.describe User, type: :model  do

let!(:user) { User.first } 
  
it { should respond_to(:name) }

  it "#name returns a string" do
		user = FactoryGirl.create(:user)
		expect(user.name).to match 'Ringo Star'
  end

end
