class Block < ActiveRecord::Base
  acts_as_list :scope => :column
  belongs_to :column
end
