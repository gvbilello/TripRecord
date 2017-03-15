class TripsController < ApplicationController

	def show
		@trip = Trip.find(params[:id])
	end

	def new
		@trip = Trip.new(user_id: session[:user_id])
	end

	def create
		trip = Trip.new(trip_params)
		if trip.save
			flash[:success] = 'Trip Successfully Created'
			redirect_to user_trip_path(trip.user_id, trip)
		else
			@errors = trip.errors.full_messages
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
		def trip_params
			params.require(:trip).permit(:user_id, :name, :description)
		end

end