class Entity < ActiveRecord::Base
  belongs_to :idea
  attr_accessible :deleted_at, :name
end
