module ApplicationHelper
	
 def participate(event)
		
  event.participants.each do |participant|
   if participant.user.id == current_user.id
	return false
   else
	return true
   end
  end
 end
 
end
