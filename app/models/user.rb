class User < ActiveRecord::Base
	acts_as_authentic
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
