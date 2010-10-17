class ChangeModerationFieldDefaults < ActiveRecord::Migration
  def self.up
    change_column :blog_comments, :moderated, :boolean, :null => false, :default => 0
  end

  def self.down
    change_column :blog_comments, :moderated, :boolean
  end
end
