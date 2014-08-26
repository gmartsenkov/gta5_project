module EventsHelper

	def console_helper(console,user_console)
		if console == "PS3"
			return user_console.ps3
		else
			return user_console.xbox360
		end
	end
end
