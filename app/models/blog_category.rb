class BlogCategory < ActiveRecord::Base
	has_many :blog_posts
end
