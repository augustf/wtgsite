class MovePositiontoBlocks < ActiveRecord::Migration
  def self.up
    drop_table :block_columns
    add_column :blocks, :column_id, :integer
    add_column :blocks, :position, :integer
  end

  def self.down
    create_table :block_columns do |t|
      t.integer :block_id
      t.integer :column_id
      t.integer :cardinality
    end

    remove_column :blocks, :column_id
    remove_column :blocks, :position

  end
end
