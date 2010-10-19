class Block < ActiveRecord::Base
  acts_as_list 
  belongs_to :column
end
