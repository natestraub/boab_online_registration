require 'spec_helper'

feature "Editing trips" do
	scenario "Updating a trip" do
		FactoryGirl.create(:trip, name: "Panama City Beach")

		visit "/"
		click_link "Panama City Beach"
		click_link "Edit Trip"
		fill_in "Name", with: "Cancun"
		click_button "Update Trip"

		expect(page).to have_content("Trip has been updated.")

	end
end