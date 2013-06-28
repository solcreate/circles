class Relation < ActiveRecord::Base
  belongs_to :seed
  attr_accessible :related_id, :type
end
