require 'spec_helper'

feature "Viewing trips" do
	scenario "Listing all trips" do
		trip = FactoryGirl.create(:trip, name: "Panama City Beach")
		visit '/'
		click_link 'Panama City Beach'
		expect(page.current_url).to eql(trip_url(trip))
	end
end