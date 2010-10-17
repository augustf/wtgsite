class CreateBlogCategories < ActiveRecord::Migration
  def self.up
    create_table :blog_categories do |t|
      t.string :name
    end
    add_column :blog_posts, :category_id, :integer
    add_column :blog_posts, :slug, :string
  end

  def self.down
    drop_table :blog_categories
    remove_column :blog_posts, :category_id
    remove_column :blog_posts, :slug
  end
end
