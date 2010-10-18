class RemoveImageFromPage < ActiveRecord::Migration
  def self.up
    remove_column :pages, :image
  end

  def self.down
    add_column :pages, :image, :string
  end
end
