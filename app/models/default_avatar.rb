class DefaultAvatar < ActiveRecord::Base
	mount_uploader :avatar_default, AvatarDefaultUploader
end
