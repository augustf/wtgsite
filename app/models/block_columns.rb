class BlockColumns < ActiveRecord::Base
  belongs_to :block
  belongs_to :column
end
