class Trip < ApplicationRecord
	belongs_to :user
	has_many :rental_cars
	has_many :flights
	has_many :trip_dates
	has_many :photos
end
