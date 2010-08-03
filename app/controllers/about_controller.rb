class AboutController < ApplicationController
	layout "page"
	
	def index 
		@users = User.order('name ASC').all
	end
end

