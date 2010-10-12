class Column < ActiveRecord::Base
  belongs_to :page
  has_many :blocks, :through => :block_columns
end
