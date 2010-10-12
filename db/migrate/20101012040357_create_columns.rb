class CreateColumns < ActiveRecord::Migration
  def self.up
    create_table :columns do |t|
      t.integer :page_id
      t.float :width
      t.integer :cardinality
      t.timestamps
    end
  end

  def self.down
    drop_table :columns
  end
end
