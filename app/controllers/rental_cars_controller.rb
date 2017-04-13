class RentalCarsController < ApplicationController

	def show
		@rental_car = RentalCar.find(params[:id])
	end

	def new
		@rental_car = RentalCar.new(trip_id: session[:trip_id])
	end

	def create
		rental_car = RentalCar.new(rental_car_params)
		if rental_car.save
			flash[:success] = 'Rental Car Successfully Created'
			redirect_to user_trip_path(rental_car.trip.user, rental_car.trip)
		else
			@errors = rental_car.errors.full_messages
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
		def rental_car_params
			params.require(:rental_car).permit(:trip_id, :rental_company, :pickup_location, :dropoff_location, :pickup_datetime, :dropoff_datetime, :make, :model, :year, :cost)
		end

end