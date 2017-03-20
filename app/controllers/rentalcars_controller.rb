class RentalCarsController < ApplicationController

	def show
		@rentalcar = RentalCar.find(params[:id])
	end

	def new
		@rentalcar = RentalCar.new(user_id: session[:user_id])
	end

	def create
		rentalcar = RentalCar.new(rentalcar_params)
		if rentalcar.save
			flash[:success] = 'Rental Car Successfully Created'
			redirect_to user_trip_rentalcar_path(rentalcar.user_id, rentalcar.trip_id, rentalcar)
		else
			@errors = rentalcar.errors.full_messages
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