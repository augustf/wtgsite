class CreateBlogComments < ActiveRecord::Migration
  def self.up
    create_table :blog_comments do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :blog_comments
  end
end
