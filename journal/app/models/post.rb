class Post < ActiveRecord::Base
	#merging users and posts
	belongs_to :user
end
