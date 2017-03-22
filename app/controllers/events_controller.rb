class EventsController < ApplicationController

	def show
		@event = Event.find(params[:id])
	end

	def new
		@event = Event.new(trip_id: params[:trip_id])
	end

	def create
		event = Event.new(event_params)
		if event.save
			flash[:success] = 'Event Successfully Created'
			redirect_to user_trip_event_path(event.user_id, event.trip_id, event)
		else
			@errors = event.errors.full_messages
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
		def event_params
			params.require(:event).permit(:name, :location, :type_of, :description, :time, :date, :cost, :photo, :trip_id)
		end

end