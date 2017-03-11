class TripDate < ApplicationRecord
	belongs_to :trip
	has_many :events
	has_one :accommodation
end
