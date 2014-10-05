module EventsHelper

	def console_helper(console,user_console)
		if console == "PS3"
			return user_console.ps3
		else
			return user_console.xbox360
		end
	end

   def date_in_words(end_time)
   	if Time.zone.now.to_datetime > end_time
   		time_ago_in_words(end_time)+" ago"
   	else
   		"starts in " + distance_of_time_in_words(Time.zone.now, end_time)
   	end

   end
end
