require 'open-uri'
require 'rss/2.0'

class FrontpageController < ApplicationController
  layout "basic"

  def index
    @project = Project.order("rand()").first

    @updates = {}
    begin
      url = root_url + 'blog/feed'
      open(url) do |http|
        response = http.read
        result = RSS::Parser.parse(response, false)
        result.items[0,3].each_with_index do |item, i|
          @updates[i] = item
        end
      end
    rescue
      flash[:notice] = "Error fetching blogposts from " + url
    end
  end
end

