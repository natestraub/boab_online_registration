require 'spec_helper'

feature 'New Trip' do
	before do
		sign_in_as!(FactoryGirl.create(:admin_user))

		visit '/'

		click_link 'New Trip'
	end

	scenario 'can create a trip' do
		fill_in 'Name', with: 'Panama City Beach'
		fill_in 'Start Date', with: '03/13/2014'
		fill_in 'End Date', with: '03/20/2014'
		fill_in 'Description', with: 'Panama City Beach will be an epic experience for all to enjoy.  Lets get fucked up!'
		fill_in 'Address', with: 'Front Beach Road'
		fill_in 'City', with: 'Panama City Beach'
		fill_in 'Country', with: 'USA'
		click_button "Create Trip"

		expect(page).to have_content ('Trip has been created.')

		trip = Trip.where(name:"Panama City Beach").first

		expect(page.current_url).to eql(trip_url(trip))

		title = "Panama City Beach - Trips - BOAB Online Registration"
		expect(page).to have_title(title)

	end
end
