class FrontpageController < ApplicationController
  def index
    @pages = Page.all
  end
end

