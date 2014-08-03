class TripsController < ApplicationController
	def index
		@trips = Trip.all
	end

	def new
		@trip = Trip.new
	end

	def create
		@trip = Trip.new(trip_params)

		if @trip.save
			flash[:notice] = "Trip has been created."
			redirect_to @trip

		else
			# nothing yet
		end
	end

	def show
		@trip = Trip.find(params[:id])
	end

	private
		def trip_params
			params.require(:trip).permit(:name, :start_date, :end_date, :description, :address, :city, :country)
		end
end


