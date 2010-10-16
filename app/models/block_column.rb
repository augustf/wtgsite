class BlockColumn < ActiveRecord::Base
  belongs_to :column
  belongs_to :block
end
