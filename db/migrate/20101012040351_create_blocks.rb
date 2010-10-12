class CreateBlocks < ActiveRecord::Migration
  def self.up
    create_table :blocks do |t|
      t.integer :image_id
      t.string :name
      t.text :html
      t.timestamps
    end
  end

  def self.down
    drop_table :blocks
  end
end
