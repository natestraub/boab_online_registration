class TripsController < ApplicationController
	before_action :set_trip, only: [:show, :edit, :update, :destroy]
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
	end

	def edit
	end

	def update
		@trip.update(trip_params)

		flash[:notice] = "Trip has been updated."
		redirect_to @trip
	end

	def destroy
		@trip.destroy

		flash[:notice] = "Trip has been deleted."
		redirect_to trips_path
	end

	private
		def trip_params
			params.require(:trip).permit(:name, :start_date, :end_date, :description, :address, :city, :country)
		end

		def set_trip
			@trip = Trip.find(params[:id])
		rescue ActiveRecord::RecordNotFound
			flash[:alert] = "The trip you were looking for could not be found."
			redirect_to trips_path
		end
end
