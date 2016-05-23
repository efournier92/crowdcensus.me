describe ApplicationController do
	let!(:user) { create(:user) }
	describe "user_signed_in? helper" do
		context "with user logged in" do
			before do
				session[:user_id] = user.id
			end
		end
	end
end

