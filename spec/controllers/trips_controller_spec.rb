require 'spec_helper'

describe TripsController do
	it "displays an error for a missing trip" do
		get :show, id: "not-here"
		expect(response).to redirect_to(trips_path)
		message = "The trip you were looking for could not be found."
		expect(flash[:alert]).to eql(message)
	end
end
