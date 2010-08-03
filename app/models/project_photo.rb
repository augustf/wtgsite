class ProjectPhoto < ActiveRecord::Base
	has_attached_file :file, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
