class Node < ActiveRecord::Base
  belongs_to :seed
  attr_accessible :deleted_at, :name
end
