class RemoveImageFromBlock < ActiveRecord::Migration
  def self.up
    drop_table :images
    remove_column :blocks, :image_id
  end

  def self.down
  create_table "images", :force => true do |t|
    t.string   "image_filenameg"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end
  add_column :blocks, :image_id, :integer
  end
end
