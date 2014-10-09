module NotyHelper
	
	def noty_personal_info_notify(current_user)
		unless current_user.nil?
		unless current_page?(profile_settings_path)
		if current_user.timezone.nil?
			return "Please select a #{link_to 'Timezone', profile_settings_path}".html_safe
		end
		end
		end
	end
end