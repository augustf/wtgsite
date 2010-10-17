class BlogCategory < ActiveRecord::Base
	has_many :blog_posts
	validates :name, :presence => true
end
