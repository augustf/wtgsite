class AddBooleanForAdminUsersToBlogComments < ActiveRecord::Migration
  def self.up
    add_column :blog_comments, :posted_by_admin, :boolean, :null => false, :default => false
  end

  def self.down
    remove_column :blog_comments, :posted_by_admin
  end
end
