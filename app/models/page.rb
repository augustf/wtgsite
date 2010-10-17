class Page < ActiveRecord::Base
  belongs_to :category
  has_many :columns
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
