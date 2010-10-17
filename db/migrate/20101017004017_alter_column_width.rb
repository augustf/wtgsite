class AlterColumnWidth < ActiveRecord::Migration
  def self.up
    change_column :columns, :width, :integer
  end

  def self.down
    change_column :columns, :width, :float
  end
end
