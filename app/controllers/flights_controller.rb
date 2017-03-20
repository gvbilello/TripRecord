class FlightsController < ApplicationController

	def show
		@flight = Flight.find(params[:id])
	end

	def new
		@flight = Flight.new(user_id: session[:user_id])
	end

	def create
		flight = Flight.new(flight_params)
		if flight.save
			flash[:success] = 'Flight Successfully Created'
			redirect_to user_trip_flight_path(flight.user_id, flight.trip_id, flight)
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

end