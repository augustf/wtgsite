class AddSlugToPages < ActiveRecord::Migration
  def self.up
    remove_column :pages, :slug
    add_column :pages, :cached_slug, :string
  end

  def self.down
    add_column :pages, :slug, :string
    remove_column :pages, :cached_slug
  end
end
