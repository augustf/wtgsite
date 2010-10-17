class RemoveImageFieldsFromPage < ActiveRecord::Migration
  def self.up
      remove_column :pages, :image_file_name      
      remove_column :pages, :image_content_type   
      remove_column :pages, :image_file_size       
      remove_column :pages, :image_updated_at  
  end

  def self.down
      add_column :pages, :image_file_name,    :string
      add_column :pages, :image_content_type, :string
      add_column :pages, :image_file_size,    :integer
      add_column :pages, :image_updated_at,   :datetime
  end
end
