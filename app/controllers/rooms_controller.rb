class RoomsController < ApplicationController
	before_action :set_trip
	before_action :set_room, only: [:show, :edit, :update, :destory]

	def new
		@room = @trip.rooms.build
	end

	def create
		@room = @trip.rooms.build(room_params)
		if @room.save
			flash[:notice] = "Room type has been created."
			redirect_to [@trip, @room]

		else
			flash[:alert] = "Room type has not been created."
			render "new"
		end
	end

	private
		def set_trip
			@trip = Trip.find(params[:trip_id])
		end

		def set_room
			@room = @trip.rooms.find(params[:id])
		end

		def room_params
			params.require(:room).permit(:name, :description, :min_people, :max_people, :cost)
		end

end
