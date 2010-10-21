class Column < ActiveRecord::Base
  acts_as_list :scope => :page
  belongs_to :page
  has_many :blocks, :order => "position"
end
