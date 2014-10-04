class Category < ActiveRecord::Base
	mount_uploader :img_path, CategoryUploader
	has_many :events
end
