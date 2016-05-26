require 'rails_helper'

RSpec.describe Census, type: :model do
	describe '#active?' do
		it 'returns true if Census is still active' do
			census = FactoryGirl.create(:census)
			expect(census.active?).to equal(true)
		end
		it 'returns false if Census has already expired' do
			census = FactoryGirl.create(:census)
			expect(census.active?).to equal(true)
		end
	end
	describe '#check_active' do
		it 'iterates through all currently active censuses' do
			expect(Census.check_active).to eq([]) 
		end
	end
end
