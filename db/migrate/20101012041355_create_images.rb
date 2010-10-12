class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :image_filenameg
      t.string :image_content_type
      t.integer :image_file_size 
      t.datetime :image_updated_at
    end
  end

  def self.down
    drop_table :images
  end
end
