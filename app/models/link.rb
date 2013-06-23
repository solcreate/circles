class Link < ActiveRecord::Base
  belongs_to :entity
  attr_accessible :linked_id, :sort_no, :type_id
end
