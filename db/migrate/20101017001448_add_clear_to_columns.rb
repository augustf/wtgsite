class AddClearToColumns < ActiveRecord::Migration
  def self.up
    add_column :columns, :is_clear, :boolean, :default => false, :null => false
  end

  def self.down
    remove_column :columns, :is_clear
  end
end
