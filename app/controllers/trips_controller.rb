class TripsController < ApplicationController

	def show
		@trip = Trip.find(params[:id])
	end

	def new
		@trip = Trip.new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private

end