class BlogPost < ActiveRecord::Base
  self.per_page = 1
  has_friendly_id :title, :use_slug => true
  belongs_to :blog_category
	has_many :blog_comments
	belongs_to :user
	validates :title, :presence => true
	validates :body, :presence => true
end
