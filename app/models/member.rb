class Member < ActiveRecord::Base
  belongs_to :entity
  belongs_to :figure
  attr_accessible :display, :value
end
