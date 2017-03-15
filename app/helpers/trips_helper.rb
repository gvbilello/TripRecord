module TripsHelper

	def format_date_long(date)
		date.to_formatted_s(:long)
	end

	def format_date_short(date)
		date.to_formatted_s(:rfc822)
	end

end