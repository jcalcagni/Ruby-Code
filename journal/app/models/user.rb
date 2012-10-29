class User < ActiveRecord::Base
	#merging users & posts
	has_many :posts
end
