class CreateBlogComments < ActiveRecord::Migration
  def self.up
	create_table :blog_comments do |t|
		t.integer :blog_post_id
		t.text :body
		t.timestamps
	end
  end

  def self.down
	drop_table :blog_comments
  end
end
