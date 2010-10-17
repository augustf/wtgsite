class BlogPost < ActiveRecord::Base
  belongs_to :blog_category
	has_many :blog_comments
end
