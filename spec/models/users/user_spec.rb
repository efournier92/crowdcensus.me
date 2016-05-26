require 'rails_helper'

describe User do
	it "#name returns a string" do
		user = FactoryGirl.create(:user)
		expect(user.name).to eq('Ringo Star')
	end
end
