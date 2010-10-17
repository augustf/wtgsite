class ChangeBlogPostSlug < ActiveRecord::Migration
  def self.up
    remove_column :blog_posts, :slug
    add_column :blog_posts, :cached_slug, :string
  end

  def self.down
    add_column :blog_posts, :slug, :string
    remove_column :blog_posts, :cached_slug
  end
end
