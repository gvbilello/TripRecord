class Trip < ApplicationRecord
	belongs_to :user
	has_many :events
	has_many :accommodations
	has_many :rental_cars
	has_many :flights
	has_many :photos
end
