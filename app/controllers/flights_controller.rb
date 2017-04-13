class FlightsController < ApplicationController

	def show
		@flight = Flight.find(params[:id])
	end

	def new
		@flight = Flight.new(trip_id: params[:trip_id])
	end

	def create
		flight = Flight.new(flight_params)
		if flight.save
			flash[:success] = 'Flight Successfully Created'
			redirect_to user_trip_path(flight.trip.user, flight.trip)
		else
			@errors = flight.errors.full_messages
			render 'new'
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
		def flight_params
			params.require(:flight).permit(:trip_id, :takeoff_datetime, :landing_datetime, :airline, :flight_number, :takeoff_aiprot, :landing_airport, :cost)
		end

end