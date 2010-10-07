require 'test_helper'

class PageTest < ActiveSupport::TestCase

  test "the truth" do
    assert true
  end
  
	test "page attributes non-empty" do
		page = Page.new
		assert page.invalid?
		assert page.errors[:title].any?
		assert page.errors[:html].any? 
		assert page.errors[:slug].any?
		assert page.errors[:created_at].any?
	end
	
end
