class AddPositionField < ActiveRecord::Migration
  def self.up
    rename_column :block_columns, :cardinality, :position
    rename_column :columns, :cardinality, :position
  end

  def self.down
    rename_column :block_columns, :position, :cardinality
    rename_column :columns, :position, :cardinality
  end
end
