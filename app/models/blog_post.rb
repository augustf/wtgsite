class BlogPost < ActiveRecord::Base
  has_friendly_id :title, :use_slug => true
  belongs_to :blog_category
	has_many :blog_comments
	validates :title, :presence => true
	validates :body, :presence => true
end
