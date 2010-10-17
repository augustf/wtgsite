class ChangeBlogComments < ActiveRecord::Migration
  def self.up
    add_column :blog_comments, :moderated, :boolean
    add_column :blog_comments, :name, :string
    add_column :blog_comments, :email, :string
    add_column :blog_comments, :website, :string
  end

  def self.down
    remove_column :blog_comments, :moderated
    remove_column :blog_comments, :name
    remove_column :blog_comments, :email
    remove_column :blog_comments, :website
  end
end
