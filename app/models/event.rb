class Event < ActiveRecord::Base
	mount_uploader :image, CoverUploader
	belongs_to :category
	has_many :participants
end
