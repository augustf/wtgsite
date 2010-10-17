class Page < ActiveRecord::Base
  has_friendly_id :title, :use_slug => true
  belongs_to :category
  has_many :columns
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
