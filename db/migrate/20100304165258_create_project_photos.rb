class CreateProjectPhotos < ActiveRecord::Migration
  def self.up
    create_table :project_photos do |t|
      t.column :project_id, :integer, :null => false
      t.column :photo, :string, :default => "", :null => false
    end
    execute "ALTER TABLE project_photos ADD CONSTRAINT photo_constrained_by_project
             FOREIGN KEY (project_id) REFERENCES projects (id) ON DELETE CASCADE"
  end

  def self.down
    execute "ALTER TABLE project_photos DROP FOREIGN KEY photo_constrained_by_project"
    drop_table :project_photos
  end
end
