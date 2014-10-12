class User < ActiveRecord::Base
	before_save :has_avatar
	has_many :events , :foreign_key => 'owner'
	has_many :participants
	mount_uploader :avatar , AvatarUploader
	has_many :friendships
	has_many :friends, :through => :friendships
	has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
	has_many :inverse_friends, :through => :inverse_friendships, :source => :user
	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable

         
    def has_avatar
    	unless self.avatar?
    		default = DefaultAvatar.order("RANDOM()").first
    		self.remote_avatar_url = default.avatar_default_url
    	end 
    end

end
