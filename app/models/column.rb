class Column < ActiveRecord::Base
  acts_as_list 
  belongs_to :page
  has_many :blocks
end
