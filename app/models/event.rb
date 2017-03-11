class Event < ApplicationRecord
	belongs_to :trip_date
	has_many :photos
end
