class FrontpageController < ApplicationController
  layout "basic"

  def index
    @project = Project.order("rand()").first
  end
end

