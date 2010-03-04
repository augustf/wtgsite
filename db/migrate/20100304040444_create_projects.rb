class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :link
      t.string :image_url
      t.string :opening
      t.string :repo_url
      t.text :excerpt

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
