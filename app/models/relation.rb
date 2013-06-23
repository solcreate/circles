class Relation < ActiveRecord::Base
  belongs_to :idea
  attr_accessible :related_id, :sort_no, :type_id
end
