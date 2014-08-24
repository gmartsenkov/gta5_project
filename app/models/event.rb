class Event < ActiveRecord::Base
	mount_uploader :image, CoverUploader
	belongs_to :category
	has_many :participants
	belongs_to :user , :foreign_key => 'owner'
end
