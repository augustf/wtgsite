class ModifyPages < ActiveRecord::Migration
  def self.up
    remove_column :pages, :html
  end

  def self.down
    add_column :pages, :html, :text
  end
end
