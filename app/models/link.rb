class Link < ActiveRecord::Base
  belongs_to :node
  attr_accessible :linked_id, :type
end
