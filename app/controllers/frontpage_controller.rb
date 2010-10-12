class FrontpageController < ApplicationController

  def index
    @project = Project.order("rand()").first
  end
end

