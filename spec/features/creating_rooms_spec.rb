require 'spec_helper.rb'

feature "Create rooms" do
	before do
		FactoryGirl.create(:trip, name: "Cancun")

		visit '/'
		click_link "Cancun"
		click_link "New Room Type"
	end

	scenario "Create a room" do
		fill_in "Name", with: "6-Person Room"
		fill_in "Description", with: "Room includes pool side views and a microwave."
		fill_in "Minimum Number of People", with: "4"
		fill_in "Maximum Number of People", with: "6"
		fill_in "Cost", with: "2000.00"
		click_button "Create Room"

		expect(page).to have_content("Room type has been created.")
	end

end

