class Event < ActiveRecord::Base
	belongs_to :category
	has_many :participants
end
