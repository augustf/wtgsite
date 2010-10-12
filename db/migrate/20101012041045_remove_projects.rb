class RemoveProjects < ActiveRecord::Migration
  def self.up
    execute "ALTER TABLE project_photos DROP FOREIGN KEY photo_constrained_by_project"
    drop_table :projects
    drop_table :project_photos
  end

  def self.down
  create_table "project_photos", :force => true do |t|
    t.integer  "project_id",         :null => false
    t.string   "photo_filename",     :null => false
    t.string   "photo_content_type", :null => false
    t.integer  "photo_file_size",    :null => false
    t.datetime "photo_updated_at",   :null => false
  end

  add_index "project_photos", ["project_id"], :name => "photo_constrained_by_project", :unique => true

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "link"
    t.string   "image_url"
    t.string   "opening"
    t.string   "repo_url"
    t.text     "excerpt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end
  end
end
