class CreateBlockColumns < ActiveRecord::Migration
  def self.up
    create_table :block_columns do |t|
      t.integer :block_id
      t.integer :column_id
      t.integer :cardinality
    end
  end

  def self.down
    drop_table :block_columns
  end
end
